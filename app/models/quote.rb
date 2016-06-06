class Quote < ActiveRecord::Base

mount_uploader :image, GraffitiImageUploader
belongs_to :culprit , :class_name => "User"
belongs_to :user 
has_and_belongs_to_many :liked_by, :class_name => 'User'
end
