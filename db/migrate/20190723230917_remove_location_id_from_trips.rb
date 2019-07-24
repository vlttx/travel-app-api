class RemoveLocationIdFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :location_id, :integer
  end
end
