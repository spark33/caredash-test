class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  # GET /doctors
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  # GET /doctors/1
  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors
  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor, notice: 'Doctor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor, notice: 'Doctor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
    redirect_to doctors_url, notice: 'Doctor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doctor_params
      params.require(:doctor).permit(:name)
    end
end
