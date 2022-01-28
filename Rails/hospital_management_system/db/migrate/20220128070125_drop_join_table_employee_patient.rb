class DropJoinTableEmployeePatient < ActiveRecord::Migration[7.0]
  def change
    drop_join_table :patients, :employees
  end
end
