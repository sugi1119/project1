# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  f_name     :string(255)
#  m_name     :string(255)
#  l_name     :string(255)
#  title      :string(255)
#  address    :string(255)
#  postcode   :string(255)
#  dob        :date
#  phone      :string(255)
#  mobile     :string(255)
#  occupation :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :practioners, :through => :appointments

  def name
    "#{f_name} #{m_name} #{l_name}"
  end
end
