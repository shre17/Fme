class RemoveColumnFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :language, :string
    remove_column :users, :location, :string
  end
end
