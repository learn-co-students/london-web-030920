class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.valid?
      @doctor.save
      redirect_to @doctor
    else
      flash[:errors] = @doctor.errors.full_messages
      redirect_to new_doctor_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :speciality, :age)
  end
end
