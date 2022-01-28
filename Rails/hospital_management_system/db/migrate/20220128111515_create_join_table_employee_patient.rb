class CreateJoinTableEmployeePatient < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :patients 
  end
end
