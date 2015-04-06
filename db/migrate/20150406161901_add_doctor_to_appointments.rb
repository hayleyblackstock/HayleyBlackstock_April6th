class AddDoctorToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :doctor, index: true
    add_foreign_key :appointments, :doctors
  end
end
