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

  def employee_form
    @employee = Employee.new
    debugger
  end

  def create
    @employee = Employee.new(employee_params)
    debugger
    # @employee = Employee.new(name: params[:name],dob: params[:dob], gender: params[:gender],specialization: params[:specialization],salary: params[:salary],department_id: params[:department_id], post: params[:post],manager_id: params[:manager_id])
    if @employee.save
      redirect_to "/employees/#{@employee.id}"
    else
      render :employee_form, status: :unprocessable_entity 
    end
  end  
  

  def destroy
    employee = Employee.find(params[:id])
    employee.destroy
    redirect_to :employees
  end
 

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.update(employee_params)

    # @employee = Employee.new(name: params[:name],dob: params[:dob], gender: params[:gender],specialization: params[:specialization],salary: params[:salary],department_id: params[:department_id], post: params[:post],manager_id: params[:manager_id])
   # if @employee.save
      redirect_to "/employees/#{@employee.id}"
    #else
      render :employee_form, status: :unprocessable_entity 
   # end
  end
  private

  def employee_params
    params.require(:employee).permit(:name, :gender, :dob, :specialization, :salary, :department_id, :post, :manager_id)
  end
end
