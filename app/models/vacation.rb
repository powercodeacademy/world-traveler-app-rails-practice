class Vacation < ApplicationRecord
  belongs_to :traveler
  belongs_to :country
end
