class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :link
      t.integer :userId
      t.datetime :date
      t.string :category
      t.integer :votes
      t.integer :numComments
      t.string :status
      t.integer :likes

      t.timestamps
    end
  end
end
