# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Author.none?
  5.times.each do |i|
    Author.create!(name: "author_#{i}")
  end
end

if Book.none?
  5.times.each do |i|
    Book.create!(
      title: "book_#{i}",
      author: Author.find_by(name: "author_#{i}"),
    )
  end
end