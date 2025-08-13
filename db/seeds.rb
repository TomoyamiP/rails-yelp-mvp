require 'faker'

Restaurant.destroy_all  # Optional: clear existing data before seeding

CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORY.sample
  )
end

puts 'Seeded 5 random restaurants with Faker!'
