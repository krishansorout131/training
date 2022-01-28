class Employee < ApplicationRecord
  validates :salary, presence: true 
  validates :specialization, presence: { strict: true }
  validates :salary, comparison: { greater_than_or_equal_to: 10000 }
  validates :name, format: { with: /\A[a-zA-Z]+\z/}
  validates :salary, numericality: { only_integer: true}
  #validates :specialization, absence: true
  validates :name, uniqueness: true
  belongs_to :department
  #has_many :opd_details
  #has_many :patients, through: :opd_details
  has_one :opd_detail
  has_one :patient, through: :opd_detail
  has_many :feedbacks, as: :feedback
  has_and_belongs_to_many :patients
end
