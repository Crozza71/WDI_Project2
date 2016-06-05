class Image < ActiveRecord::Base

  mount_uploader :graffiti_image, GraffitiImageUploader
end
