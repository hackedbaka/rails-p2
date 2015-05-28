class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.string :login_name
      t.string :password
      t.string :contact
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
