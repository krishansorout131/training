class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end  
  
  def department_employees
    @employees = Department.find(params[:id]).employees
    @department_name = Department.find(params[:id]).name
  end  
end
