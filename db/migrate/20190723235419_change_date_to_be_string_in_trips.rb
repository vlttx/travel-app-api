class ChangeDateToBeStringInTrips < ActiveRecord::Migration[5.2]
  def change
  	change_column :trips, :end_date, :string
  	change_column :trips, :start_date, :string

  end
end
