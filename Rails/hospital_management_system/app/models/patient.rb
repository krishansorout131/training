class Patient < ApplicationRecord
  validates :address, exclusion: { in: %w(delhi gurugram), message: "%{value} is reserved." }
  validates :address, inclusion: { in: %w(hodal palwal faridabad), message: "not accepting %{value}"}
  validates :name, length: { minimum: 3 , message: "name should be greater then 3 words"}
end
