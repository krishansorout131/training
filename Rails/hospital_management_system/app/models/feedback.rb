class Feedback < ApplicationRecord
  belongs_to :feedback, polymorphic: true 
end
