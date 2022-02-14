json.extract! book_checkout, :id, :user_id, :book_id, :created_at, :updated_at
json.url book_checkout_url(book_checkout, format: :json)
