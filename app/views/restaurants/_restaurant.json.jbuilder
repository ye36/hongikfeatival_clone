json.extract! restaurant, :id, :name, :location, :tel, :delivery, :package, :runtime, :sale, :menuimg, :image, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
