class PersonalityReviewsController < ApplicationController
  before_action :find_booking
  def new
    @personality_review = PersonalityReview.new
  end

  def create
    @personality_review = PersonalityReview.new(personality_review_params)
    @personality_review.booking = @booking

    if @personality_review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def personality_review_params
    params.require(:personality_review).permit(:comment, :rating)
  end
end
