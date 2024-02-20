# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "faker"

Article.delete_all

10.times do
  fake_title = Faker::Games::LeagueOfLegends.quote
  fake_content = Faker::Movies::VForVendetta.speech
  article = Article.new(title: fake_title, content: fake_content)
  article.save
end
