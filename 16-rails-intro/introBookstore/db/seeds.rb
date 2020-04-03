require "faker"

15.times do
  Author.create name: Faker::Book.author
end

15.times do
  Book.create title: Faker::Book.title, author_id: Author.all.sample.id
end
