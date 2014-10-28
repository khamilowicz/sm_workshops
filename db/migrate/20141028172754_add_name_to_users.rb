class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :text
    add_column :users, :last_name, :text
    add_column :users, :birthday, :date
  end
end
