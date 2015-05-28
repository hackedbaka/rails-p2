class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.float :price
      t.integer :seller_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
