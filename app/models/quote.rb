class Quote < ActiveRecord::Base

mount_uploader :image, GraffitiImageUploader
belongs_to :creator , :class_name => "Quote"
belongs_to :user  
has_and_belongs_to_many :liked_by, :class_name => 'User'
end
