class Post < ApplicationRecord
  resourcify
  include Authority::Abilities
  	
  belongs_to :user
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
