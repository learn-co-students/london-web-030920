# Book.destroy_all
# GoogleBooks::Adapter.new("Madeline L'Engle").fetch_books

Year.destroy_all
years = (1800..2020).to_a

years.each do |year|
  Year.create year: year
end

Book.all.each do |book|
  book.year_id = Year.all.sample.id
  book.save
end
