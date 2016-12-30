class Post < ActiveRecord::Base
   belongs_to :user
   has_attached_file :image, :styles => { :small => "200x200", :medium => "400x400>", :thumb => "100x100>" }
   do_not_validate_attachment_file_type :image

   scope :active, -> { where(active: true) }

end
