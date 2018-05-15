json.extract! movie, :id, :title, :description, :duration, :Director_id, :release_date, :Address_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
