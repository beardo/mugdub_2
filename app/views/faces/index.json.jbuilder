json.array!(@faces) do |face|
  json.extract! face, :id, :image, :user_id
  json.url face_url(face, format: :json)
end
