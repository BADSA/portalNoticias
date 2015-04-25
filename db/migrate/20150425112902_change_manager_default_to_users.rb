class ChangeManagerDefaultToUsers < ActiveRecord::Migration
  def change
    change_column :users, :manager, :boolean, :default => false
  end
end
