class AddNewColumnToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :post, :string
    add_column :employees, :manager_id, :bigint
  end
end
