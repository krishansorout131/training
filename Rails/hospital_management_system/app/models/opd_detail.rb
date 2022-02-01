class OpdDetail < ApplicationRecord
  belongs_to :employee
  belongs_to :patient 
  before_destroy :destroy_details
  
  private

  def destroy_details
    puts "Thankyou #{self.patient.name} for taking treatment from our hospital"
  end  
end
