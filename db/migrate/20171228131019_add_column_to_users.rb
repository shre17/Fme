class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :contact, :string
    add_column :users, :experience, :string
    add_column :users, :about_me, :string
    add_column :users, :role, :string
    add_reference :users, :service_category, foreign_key: true
  end
end
