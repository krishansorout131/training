Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "departments#index"
  get "/employees" => "employees#employees"
  get "/department/:id" => "departments#department_employees"
  get "/employees/managers" => "employees#managers"
  get "/employees/managers/:id" => "employees#manager_subordinates"
end
