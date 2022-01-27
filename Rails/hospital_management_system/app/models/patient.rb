class Patient < ApplicationRecord
  validates :address, exclusion: { in: %w(delhi gurugram), message: "%{value} is reserved." }
  validates :address, inclusion: { in: %w(hodal palwal faridabad), message: "not accepting %{value}"}
end
