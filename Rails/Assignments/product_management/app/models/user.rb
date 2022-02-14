class User < ApplicationRecord
  
  has_many :products
  validates :name, :dob, :password, :address, presence: true
  validates :password, confirmation: { case_sensitive: true }
  validates :terms_of_services, acceptance: true
 
end
