# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all 

a=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

20.times do 
    User.create(name: Faker::Artist.name)
end

20.times do 
    Recipe.create(name: Faker::Food.vegetables, user_id: a.sample())
end

20.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end 

20.times do 
    Allergy.create(name: Faker::Cannabis.brand, user_id: a.sample(), ingredient_id: a.sample())
end 
20.times do 
    RecipeIngredient.create(recipe_id: a.sample(), ingredient_id: a.sample())
end 
