class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :ingredients 
    has_many :allergies
    has_many :users, through: :allergies 
end
