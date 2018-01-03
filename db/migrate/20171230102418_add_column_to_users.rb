class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_pic, :string
     add_column :users, :language, :string
      add_column :users, :location, :string
  end
end
