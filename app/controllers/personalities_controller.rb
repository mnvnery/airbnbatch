class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personality = Personality.find(params[:id])
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
    params.require(:personality).permit(:name, :description, :price_hour)
  end
end
