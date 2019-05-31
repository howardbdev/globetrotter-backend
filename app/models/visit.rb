class Visit < ApplicationRecord
  belongs_to :attraction
  belongs_to :trip
end
