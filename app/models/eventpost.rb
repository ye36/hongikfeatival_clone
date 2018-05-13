class Eventpost < ActiveRecord::Base
    mount_uploader :mainimage, EventimageUploader
    mount_uploader :image2, EventimageUploader
    mount_uploader :image3, EventimageUploader
    belongs_to :user
end
