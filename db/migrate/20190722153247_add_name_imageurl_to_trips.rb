class AddNameImageurlToTrips < ActiveRecord::Migration[5.2]
  def change
  	add_column :trips, :name, :string
  	add_column :trips, :imageurl, :string
  end
end
