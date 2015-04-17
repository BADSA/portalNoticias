class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :link
      t.integer :userId
      t.timestamp :date
      t.integer :catId
      t.integer :likes

      t.timestamps
    end
  end
end
