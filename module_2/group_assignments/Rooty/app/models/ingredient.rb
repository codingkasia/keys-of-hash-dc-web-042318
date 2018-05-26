class Ingredient < ApplicationRecord
  has_many :smoothies, through: :smoothie_ingredients
  has_many :smoothie_ingredients
end
