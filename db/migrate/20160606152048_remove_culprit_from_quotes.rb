class RemoveCulpritFromQuotes < ActiveRecord::Migration
  def change
    remove_column :quotes, :culprit, :string
  end
end
