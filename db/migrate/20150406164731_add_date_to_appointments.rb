class AddDateToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :date, :datetime
  end
end
