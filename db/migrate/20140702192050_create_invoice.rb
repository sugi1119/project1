class CreateInvoice < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :service
      t.float :service_charge
      t.integer :appointment_id
    end
  end
end
