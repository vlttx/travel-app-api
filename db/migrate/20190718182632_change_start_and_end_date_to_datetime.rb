class ChangeStartAndEndDateToDatetime < ActiveRecord::Migration[5.2]
  def change
  	change_column :trips, :start_date, 'date USING CAST(start_date AS date)'
  	change_column :trips, :end_date, 'date USING CAST(end_date AS date)'
  end
end
