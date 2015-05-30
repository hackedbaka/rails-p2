class AddTextToService < ActiveRecord::Migration
  def change
    add_column :services, :text, :string
    add_reference :services, :category_id
  end
end
