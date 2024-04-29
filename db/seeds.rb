# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Créez d'abord les villes
10.times do
    City.create!(
      name: Faker::Address.city,
      zip_code: Faker::Address.zip_code
    )
  end
  
  # Puis créez les utilisateurs en leur associant une ville
  10.times do
    User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.paragraph,
      email: Faker::Internet.email,
      age: Faker::Number.between(from: 18, to: 60),
      city_id: City.all.sample.id # Ici, utilisez city_id au lieu de city
    )
  end

  20.times do
    gossip = Gossip.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph,
      user: User.all.sample
    )
  end

  10.times do
    tag = Tag.create(title: Faker::Lorem.word)
    gossip = Gossip.all.sample
    GossipTag.create(gossip: gossip, tag: tag)
  end

#  # Créez quelques messages privés
# 5.times do
#     sender = User.all.sample
#     recipient = User.where.not(id: sender.id).sample
#     PrivateMessage.create!(
#       content: Faker::Lorem.sentence,
#       sender: sender,
#       recipient: recipient
#     )
#   end