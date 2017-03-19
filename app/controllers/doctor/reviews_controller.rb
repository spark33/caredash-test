class Doctor::ReviewsController < ApplicationController

	# GET /doctor/1/reviews
  def index
    @doctor = Doctor.find(params[:doctor_id])
    render json: @doctor.reviews
  end

  # GET /doctors/1/reviews/1
  def show
    @doctor = Doctor.find(params[:doctor_id])
    render json: @doctor.reviews.find(params[:id])
  end

end
