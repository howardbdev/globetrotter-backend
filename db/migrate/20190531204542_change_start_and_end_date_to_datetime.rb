class ChangeStartAndEndDateToDatetime < ActiveRecord::Migration[5.2]
  def change
    change_column :trips, :start_date, :date
    change_column :trips, :end_date, :date
  end
end
