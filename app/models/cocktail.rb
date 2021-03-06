class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  before_destroy :destr
mount_uploader :photo, PhotoUploader
private

def destr
  self.doses.destroy_all
end
end
