class Department < ApplicationRecord
  has_many :employees  
  has_many :feedbacks, as: :feedback
end
