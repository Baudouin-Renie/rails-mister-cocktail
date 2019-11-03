class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :small_description, presence: true
end
