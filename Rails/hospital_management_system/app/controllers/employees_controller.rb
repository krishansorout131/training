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
  end 
end
