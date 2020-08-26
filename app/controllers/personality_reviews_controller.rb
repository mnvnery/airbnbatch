class PersonalityReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @personality_review = PersonalityReview.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @personality_review = PersonalityReview.new(personality_review_params)
    @personality_review.booking = @personality

    if @personality_review.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  private

  def personality_review_params
    params.require(:personality_review).permit(:comment, :rating)
  end
end
