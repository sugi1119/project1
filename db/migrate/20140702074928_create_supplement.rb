class CreateSupplement < ActiveRecord::Migration
  def change
    create_table :supplements do |t|
      t.string :item_name
      t.float :amount
    end
  end
end



