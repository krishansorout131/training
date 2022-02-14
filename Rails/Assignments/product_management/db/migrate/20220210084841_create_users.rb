class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.date :dob
      t.string :password, null: false
      t.text :address, null: false
      t.timestamps
    end
  end
end
