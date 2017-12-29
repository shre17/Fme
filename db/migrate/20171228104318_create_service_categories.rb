class CreateServiceCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :service_categories do |t|
      t.string :name
      t.string :banner_image
      t.string :descripition

      t.timestamps
    end
  end
end
