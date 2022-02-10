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

  def edit
    @patient = Patient.find(params[:id])
  end
  
  def update 
    @patient = Patient.find(params[:id])
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_url(@patient), notice: "patient was successfully updated." }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end  

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_url
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
