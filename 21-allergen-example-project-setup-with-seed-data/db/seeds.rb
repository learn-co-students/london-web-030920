# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting User Seed...."

puts "*******************************************"

10.times do 
  user = User.create(name: Faker::Name.first_name)
  if user.valid?
    puts user.name
  end
end

puts "Starting  REcipes...."

puts "*******************************************"

10.times do 
  recipe = Recipe.create(name: Faker::Food.dish, user_id: User.all.sample.id)
  if recipe.valid?
    puts recipe.name
  end
end

puts "Starting  Ingredients...."

puts "*******************************************"

10.times do 
 ingredient =  Ingredient.create(name: Faker::Food.ingredient)
 if ingredient.valid?
  puts ingredient.name
 end

end

puts "Starting  REcipeIngredients...."

puts "*******************************************"

10.times do 
  ri = RecipeIngredient.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
  if ri.valid?
    puts ri 
  end
end


puts "Finished Seedin you clever sausage...."

puts "*******************************************"


# puts "Starting User seed"

# 10.times do
#   user = User.create(
#     name: Faker::Name.first_name,
#   )
#   if user.valid?
#     puts user.name
#   end
# end

# puts "Starting Recipe seed"
# 10.times do
#   recipe = Recipe.create(
#     name: Faker::Food.dish,
#     user_id: User.all.sample.id,
#   )
#   if recipe.valid?
#     puts recipe.name
#   end
# end

# puts "Starting Ingredient seed"
# 10.times do
#   ing = Ingredient.create(
#     name: Faker::Food.ingredient,
#   )
#   if ing.valid?
#     puts ing.name
#   end
# end

# puts "Starting RecipeIngredient seed"
# 10.times do
#   ri = RecipeIngredient.create(
#     recipe_id: Recipe.all.sample.id,
#     ingredient_id: Ingredient.all.sample.id,
#   )

#   if ri.valid?
#     puts ri
#   end
# end
