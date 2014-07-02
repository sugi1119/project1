# == Schema Information
#
# Table name: practioners
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  username        :string(255)
#  email           :string(255)
#

class Practioner < ActiveRecord::Base
  has_secure_password
  has_many :appointments
  has_many :patients, :through => :appointments
  validates :username, :presence => true, :length => {:minimum => 3}
end
