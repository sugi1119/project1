class AddusernameToPractioners < ActiveRecord::Migration
  def change
    add_column :practioners, :username, :string
    add_column :practioners, :email, :string
  end
end

