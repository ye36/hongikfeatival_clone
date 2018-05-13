class Lostpost < ActiveRecord::Base
    mount_uploader :image, LostImageUploader
    has_many :lostcomments
    belongs_to :user
    
    def self.search1(search)
      search = "%#{search.downcase}%"    
      where("lower(title) LIKE ?", "%#{search}%") 
    end     
    def self.search2(search)
      search = "%#{search.downcase}%"
      where("lower(content) LIKE ?", "%#{search}%") 
    end       
    def self.search3(search)
      search = "%#{search.downcase}%"
      where("lower(title) LIKE ? OR lower(content) LIKE ?", "%#{search}%", "%#{search}%") 
    end   
    
end
