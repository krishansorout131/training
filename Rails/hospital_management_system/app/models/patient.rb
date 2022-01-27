class Patient < ApplicationRecord
  validates :address, exclusion: { in: %w(delhi gurugram), message: "%{value} is reserved." }
end
