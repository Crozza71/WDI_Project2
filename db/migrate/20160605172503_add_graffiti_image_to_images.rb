class AddGraffitiImageToImages < ActiveRecord::Migration
  def change
    add_column :images, :graffiti_image, :string
  end
end
