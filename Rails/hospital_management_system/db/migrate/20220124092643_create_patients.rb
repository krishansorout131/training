class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.date :dob
      t.text :address
      t.timestamps
    end
  end
end
