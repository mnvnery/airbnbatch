class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
    if params[:query].present?
      sql_query = "name @@ :query OR users.location @@ :query"
      @personalities = Personality.where(sql_query, query: "%#{params[:query]}%")
      @personalities = Personality.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @personalities = Personality.all
    end
  end

  def show
    @personality = Personality.find(params[:id])
    @booking = Booking.new
    @user_lat = @personality.user.geocode[0]
    @user_lng = @personality.user.geocode[1]

    @markers = [{ lat: @user_lat, lng: @user_lng }]
  end

  def new
    @personality = Personality.new
  end

  def create
    @personality = Personality.new(personality_params)
    @personality.user = current_user
    if @personality.save
      redirect_to personality_path(@personality)
    else
      render :new
    end
  end

  def edit
    @personality = Personality.find(params[:id])
  end

  def update
    @personality = Personality.find(params[:id])
    @personality.user = current_user
    if @personality.update(personality_params)
      redirect_to personality_path(@personality)
    else
      render :new
    end
  end

  def destroy
    @personality = Personality.find(params[:id])
    @personality.destroy
    redirect_to personalities_path
  end

  private

  def personality_params
    # Not sure if I have to permit user_id here. Hard to test without current user login ready.
    params.require(:personality).permit(:name, :description, :price_hour, :image_url)
  end
end
