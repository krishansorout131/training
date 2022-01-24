class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.date :dob
      t.string :specialization
      t.integer :salary
      t.bigint :department_id
      t.timestamps
    end
  end
end
