class Ingredient < ApplicationRecord
  INGREDIENTS = Ingredient.all.order(:name)

  has_many :doses

  validates :name, presence: true, uniqueness: true
end
