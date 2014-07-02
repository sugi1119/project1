class CreatePractioner < ActiveRecord::Migration
  def change
    create_table :practioners do |t|
      t.string :name
      t.timestamps

    end
  end
end
