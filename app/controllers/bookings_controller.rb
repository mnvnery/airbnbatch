class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @personality = Personality.find(params[:personality_id])
    @bookings = @personality.bookings
  end

  def create
    @personality = Personality.find(params[:personality_id])
    @booking = Booking.new(booking_params)
    @booking.personality = @personality
    @booking.user = current_user
    @booking.status = nil
    if @booking.start_date && @booking.end_date
      @hours = (@booking.end_date - @booking.start_date) / 3600
      @booking.total_price = (@hours.to_f * @personality.price_hour.to_f).round
    else
      @booking.value = 0
    end
    if @booking.save
      redirect_to personality_path(@personality)
    else
      redirect_to personalities_path
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def index_gigs
    @my_bookings = Booking.where(personality_id: current_user.id)
  end

  def show
    set_booking
    @personality = @booking.personality
  end

  def edit
    set_booking
  end

  def update
    set_booking
    if params[:commit] == 'Confirm'
      @booking.update(status: true)
      redirect_to bookings_path
    elsif params[:commit] == 'Decline'
      @booking.update(status: false)
      redirect_to bookings_path
    else
      @booking.update(booking_params)
      redirect_to bookings_path
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end
end
