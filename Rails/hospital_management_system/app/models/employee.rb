class Employee < ApplicationRecord
    validates :salary, presence: true 
    validates :specialization, presence: true
end
