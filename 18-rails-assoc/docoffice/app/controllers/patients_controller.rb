class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update]
  before_action :find_doctors, only: [:new, :edit]

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to @patient
  end

  def edit
  end

  def update
    @patient.update(patient_params)
    redirect_to @patient
  end

  def delete
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :doctor_id)
  end

  def find_patient
    @patient = Patient.find(params[:id])
  end

  def find_doctors
    @doctors = Doctor.all
  end
end
