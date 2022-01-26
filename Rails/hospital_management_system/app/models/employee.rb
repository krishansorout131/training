class Employee < ApplicationRecord
  validates :salary, presence: true 
  validates :specialization, presence: true
  validates :salary, comparison: { greater_than_or_equal_to: 10000 }
end
