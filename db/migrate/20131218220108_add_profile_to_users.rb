class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string
    add_column :users, :education, :text
    add_column :users, :english_level, :string
    add_column :users, :profile, :text
  end
end
