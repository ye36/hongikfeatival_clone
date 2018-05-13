json.extract! lostpost, :id, :goal, :group, :title, :content, :location, :image, :created_at, :updated_at
json.url lostpost_url(lostpost, format: :json)
