class AddCulpritImageToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :culprit_image, :string
  end
end
