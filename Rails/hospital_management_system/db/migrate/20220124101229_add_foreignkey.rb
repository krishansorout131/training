class AddForeignkey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :employees, :departments, column: :department_id, primary_key: :id
  end
end
