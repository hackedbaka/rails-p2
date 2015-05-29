class AddTextToService < ActiveRecord::Migration
  def change
    add_column :services, :text, :string
  end
end
