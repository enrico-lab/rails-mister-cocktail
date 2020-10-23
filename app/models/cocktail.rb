class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true, allow_blank: false
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
end
