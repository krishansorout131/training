class Department < ApplicationRecord
  has_many :employees  
  has_many :feedbacks, as: :feedback
  before_create :downcase_check

  private
  def downcase_check
    self.name.downcase! 
  end  
end
