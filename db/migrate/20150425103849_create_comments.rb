class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :postId
      t.integer :userId
      t.text :content

      t.timestamps
    end
  end
end
