class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :userId
      t.integer :postId

      t.timestamps
    end
  end
end
