class Department < ApplicationRecord
  has_many :employees  
  has_many :feedbacks, as: :feedback
  #before_create :downcase_check
  #after_create :after_capitalize
  #around_create :around_upcase
  before_update :update_name
  after_update :after_capitalize
  around_update :around_upcase

  private
  def downcase_check
    self.name.downcase! 
  end  
  def around_upcase
    self.name.capitalize!
    yield
    puts "new value saved #{self.name}"
  end  
  def after_capitalize
    self.name.upcase!
  end 
  def update_name
    self.name.strip!
  end   
end
