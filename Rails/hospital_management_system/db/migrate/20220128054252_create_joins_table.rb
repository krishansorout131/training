class CreateJoinsTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :patients, :employees do |t|
      t.index :patient_id
      t.index :employee_id
    end
  end
end
