class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :user_id 
      t.string :name
      t.string :category
      t.integer :quantity
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
