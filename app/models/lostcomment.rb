class Lostcomment < ActiveRecord::Base
    belongs_to :user
    belongs_to :lostpost
end
