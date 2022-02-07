class EmployeesController < ApplicationController


  def employees 
    @employees = Employee.all
  end 
  def managers
    @managers = Employee.where(post: "Manager")
  end 
  def manager_subordinates
    @manager_employees = Employee.find(params[:id]).employees
    @manager_name = Employee.find(params[:id]).name
    @manager_details = Employee.find(params[:id])
  end
  def employee_details
    @employee = Employee.find(params[:id])
  end  
  def doctors
    @doctors = Employee.where(post: "Doctor")
  end  
  def doctor_patients
    @doctor = Employee.find(params[:id])
    @doctor_patients = Employee.find(params[:id]).patients
  end  
  def doctor_details
    @employee = Employee.find(params[:id])
    @idp = params[:idp]
  end 

  def create
    @employee = Employee.new(name: params[:name],dob: params[:dob], gender: params[:gender],specialization: params[:specialization],salary: params[:salary],department_id: params[:department_id], post: params[:post],manager_id: params[:manager_id])
    @employee.save
    redirect_to "/employees/#{@employee.id}"
  end  
end
