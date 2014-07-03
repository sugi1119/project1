# == Schema Information
#
# Table name: prescriptions
#
#  id             :integer          not null, primary key
#  recommendation :text
#  dosage         :text
#  appointment_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Prescription < ActiveRecord::Base
  belongs_to :appointment
  has_and_belongs_to_many :supplements

end

