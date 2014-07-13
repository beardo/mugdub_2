json.array!(@guesses) do |guess|
  json.extract! guess, :id, :latitude, :longitude, :name, :face_id, :user_id
  json.url guess_url(guess, format: :json)
end
