class AddReturnDateColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    change_table :bookings do |t|
      t.date :return_date
    end
  end
end
