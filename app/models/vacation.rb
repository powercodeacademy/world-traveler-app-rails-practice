class Vacation < ApplicationRecord
  belongs_to :traveler
  belongs_to :country

  scope :favorite, -> { where(favorite: true) }
end
