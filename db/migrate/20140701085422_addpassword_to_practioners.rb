class AddpasswordToPractioners < ActiveRecord::Migration
  def change
    add_column :practioners, :password_digest, :string
    add_column :practioners, :is_admin, :boolean, :default => false
  end
end
