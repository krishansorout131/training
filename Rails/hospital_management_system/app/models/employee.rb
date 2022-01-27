class Employee < ApplicationRecord
  validates :salary, presence: true 
  validates :specialization, presence: { strict: true }
  validates :salary, comparison: { greater_than_or_equal_to: 10000 }
  validates :name, format: { with: /\A[a-zA-Z]+\z/}
  validates :salary, numericality: { only_integer: true}
  #validates :specialization, absence: true
  validates :name, uniqueness: true
end
