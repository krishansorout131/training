Rails.application.routes.draw do
  resources :employees, only: [:update]
  
  get "/employees" => "employees#employees"
  get "/search" => "employees#employees"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   
  root "departments#index"
  get "/employees/new" => "employees#employee_form"
  #post "/employees/create"
  post "/employees/" => "employees#create"
  get "/employee/destroy/:id" => "employees#destroy"
  get "/employee/edit/:id" => "employees#edit"
  
  get "/department/:id" => "departments#department_employees"
  get "/employees/managers" => "employees#managers"
  get "/employees/managers/:id" => "employees#manager_subordinates"
  get "/employees/:id" => "employees#employee_details"
  
  get "/doctors" => "employees#doctors"
  get "/doctors/:id" => "employees#doctor_patients"
  get "/doctors/patients/:id/:did" => "patients#doctor_patient_details" 

  resources :patients
  get "/patient/doctors/:id/:idp" => "employees#doctor_details"
  resources :products
end
