class CreateCommentsAgain < ActiveRecord::Migration
  def change
    create_table :comments_agains do |t|

      t.string :username
      t.text :quote
      t.string :culprit

    end
  end
end
