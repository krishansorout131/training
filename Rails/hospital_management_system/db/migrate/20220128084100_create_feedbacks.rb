class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :type
      t.string :feedback_type
      t.integer :feedback_id
      t.timestamps
    end
  end
end
