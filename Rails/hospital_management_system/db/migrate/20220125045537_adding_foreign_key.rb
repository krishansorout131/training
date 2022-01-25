class AddingForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :opd_details, :patients, column: :patient_id, primary_key: :id
    add_foreign_key :opd_details, :employees, column: :employee_id, primary_key: :id
  end
end
