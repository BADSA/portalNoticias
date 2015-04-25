class AddColumnToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :justification, :text
  end
end
