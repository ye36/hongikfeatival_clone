json.extract! eventpost, :id, :title, :contents, :runtime, :location, :mainimage, :image2, :image3, :created_at, :updated_at
json.url eventpost_url(eventpost, format: :json)
