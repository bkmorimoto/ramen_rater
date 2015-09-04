5.times do
  restaurant = Restaurant.create(name: Faker::Company.name, rating: rand(10))
  restaurant.ramens.create(name: Faker::Hacker.adjective + 'Ramen', description: Faker::Lorem.paragraph, price: (rand * (15 - 10) + 10).round(2))
end

5.times do
  user = User.create(name: Faker::Internet.user_name, password: 'password')
  3.times do
    ramen = Ramen.find(Ramen.pluck(:id).sample)
    user.posts.create(ramen: ramen, rating: rand(10), description: Faker::Lorem.paragraph)
  end
end
