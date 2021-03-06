# == Schema Information
#
# Table name: appointments
#
#  id               :integer          not null, primary key
#  appointment_date :datetime
#  patient_id       :integer
#  practioner_id    :integer
#  notes            :text
#

class Appointment < ActiveRecord::Base
  belongs_to :practioner
  belongs_to :patient
  has_many :prescriptions
  has_one :invoice

end
