class PatientsController < ApplicationController
  
  def index 
    @patients = Patient.all
  end  

  def show
    @patient = Patient.find(params[:id])
    @patient_doctors = Patient.find(params[:id]).employees
  end

  def new
    @patient = Patient.new
  end  

  def create
     @patient = Patient.create(patient_params)

     if @patient.save
      redirect_to "/patients/#{@patient.id}"
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def doctor_patient_details
    @patient = Patient.find(params[:id])
    @did = params[:did]
  end  
  

  private

  def patient_params
    params.require(:patient).permit(:name, :gender, :dob, :address)
  end
end
