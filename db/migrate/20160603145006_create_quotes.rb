class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :body
      t.string :culprit
      t.date :date

      t.timestamps null: false
    end
  end
end
