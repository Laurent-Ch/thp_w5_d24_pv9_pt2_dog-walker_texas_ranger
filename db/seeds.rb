# City
20.times do 
  city = City.create!(name: Faker::Address.city)
end

# Dogs
50.times do 
  dog = Dog.create!(
    name: Faker::Superhero.name,
    city: City.find(rand(1..20))
  )
end

# Dogsitters
50.times do 
  dog = Dogsitter.create!(
    name: Faker::Music::Hiphop.artist,
    city: City.find(rand(1..20))
  )
end

# Strolls
100.times do
  stroll = Stroll.create!(
    date: Faker::Date.between(from: '2021-01-01', to: '2021-12-31'),
    dog: Dog.find(rand(1..50)),
    dogsitter: Dogsitter.find(rand(1..50))
  )
end
