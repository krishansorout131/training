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
  end  
end
