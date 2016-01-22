json.array!(@library_cat_books) do |library_cat_book|
  json.extract! library_cat_book, :id, :bookname, :author, :category
  json.url library_cat_book_url(library_cat_book, format: :json)
end
