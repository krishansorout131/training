class CreateOpdDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :opd_details do |t|
      t.bigint :patient_id
      t.bigint :employee_id
      t.timestamps
    end
  end
end
