class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :username
      t.string :password_digest
      t.integer :service_id
      t.index(:email, unique: true)
      t.timestamps null: false
    end
    add_reference :services, :seller_id
  end
end
