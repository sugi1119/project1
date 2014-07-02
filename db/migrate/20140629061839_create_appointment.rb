class CreateAppointment < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.integer :patient_id
      t.integer :practioner_id
      t.timestamp
    end
  end
end
