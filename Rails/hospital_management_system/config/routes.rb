Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "departments#index"
  get "/employees" => "employees#employees"
  get "/department/:id" => "departments#department_employees"
  get "/employees/managers" => "employees#managers"
  get "/employees/managers/:id" => "employees#manager_subordinates"
  get "/employees/:id" => "employees#employee_details"
  get "/patients" => "patients#patients"
  get "/doctors" => "employees#doctors"
  get "/doctors/:id" => "employees#doctor_patients"
  get "/patients/:id" => "patients#patient_details"
  get "/patient/doctors/:id" => "employees#doctor_details"
  get "/doctors/patients/:id" => "patients#doctor_patient_details" 
end
