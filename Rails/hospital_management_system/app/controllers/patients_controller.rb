class PatientsController < ApplicationController
  
  def patients 
    @patients = Patient.all
  end  
  def patient_details
    @patient = Patient.find(params[:id])
    @patient_doctors = Patient.find(params[:id]).employees
  end 
  def doctor_patient_details
    @patient = Patient.find(params[:id])
  end  
  
end
