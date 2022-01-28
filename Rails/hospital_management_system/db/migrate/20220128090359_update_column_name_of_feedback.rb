class UpdateColumnNameOfFeedback < ActiveRecord::Migration[7.0]
  def change
    rename_column :feedbacks, :type, :title
  end
end
