class Patient < ApplicationRecord
  validates :address, exclusion: { in: %w(delhi gurugram), message: "%{value} is reserved." }
  validates :address, inclusion: { in: %w(hodal palwal faridabad), message: "not accepting %{value}"}, allow_blank: true #allow_nil: true
  validates :name, length: { minimum: 3 , message: "name should be greater then 3 words"}
  has_many :opd_details
  has_many :employees, through: :opd_details
end
