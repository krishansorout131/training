class Product < ApplicationRecord
  self.per_page = 2
  belongs_to :user
end
