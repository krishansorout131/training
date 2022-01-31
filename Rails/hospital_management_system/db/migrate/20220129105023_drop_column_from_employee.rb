class DropColumnFromEmployee < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :updated_at
    add_foreign_key :employees, :employees, column: :manager_id, primary_key: :id
  end
end
