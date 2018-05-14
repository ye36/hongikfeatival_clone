class Restaurant < ActiveRecord::Base
    mount_uploader :menuimg, RestaurantImgUploader
    mount_uploader :image, RestaurantImgUploader    
    belongs_to :user
end
