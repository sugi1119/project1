# == Schema Information
#
# Table name: invoices
#
#  id             :integer          not null, primary key
#  service        :string(255)
#  service_charge :float
#  appointment_id :integer
#

class Invoice < ActiveRecord::Base
  belongs_to :appointment
  has_one :patient, :through => :appointment
  has_one :practioner, :through => :appoinment

end
