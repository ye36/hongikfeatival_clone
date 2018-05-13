class Fleemarket < ActiveRecord::Base
    mount_uploader :mainimage, FleeImageUploader
    mount_uploader :image2, FleeImageUploader
    mount_uploader :image3, FleeImageUploader
    belongs_to :user
end
