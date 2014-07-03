class CreatePrescriptionSupplement < ActiveRecord::Migration
  def change
    create_table :prescriptions_supplements, :id => false do |t|
      t.integer :prescription_id
      t.integer :supplement_id
      t.timestamps

    end
  end
end
