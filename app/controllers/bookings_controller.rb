class BookingsController < ApplicationController
  def create
    @personality = Personality.find(params[:personality_id])
    @booking = Booking.new(booking_params)
    @booking.personality = @personality
    @booking.user = current_user
    @booking.status = "Pending host validation"
    if @booking.checkout_on && @booking.checkin_on
      @booking.value = (@booking.checkout_on - @booking.checkin_on).to_f * @booking.personality.price.to_f
    else
      @booking.value = 0
    end
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to personality_path(@personality)
    end
  end
end
