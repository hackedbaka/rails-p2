class RemoveServiceIdFromSellers < ActiveRecord::Migration
  def change
    remove_column :sellers, :service_id, :integer
  end
end
