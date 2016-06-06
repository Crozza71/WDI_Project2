class AddCulpritIdToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :culprit_id, :integer
  end
end
