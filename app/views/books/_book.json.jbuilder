json.extract! book, :id, :title, :author, :year_published, :number_of_pages, :rating, :created_at, :updated_at
json.url book_url(book, format: :json)
