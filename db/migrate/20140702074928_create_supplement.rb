class CreateSupplement < ActiveRecord::Migration
  def change
    create_table :supplements do |t|
      t.string :item_name
      t.float :amount
      t.float :item_cost
    end
  end
end



