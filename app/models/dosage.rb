# == Schema Information
#
# Table name: dosages
#
#  id              :integer          not null, primary key
#  supplement_id   :integer
#  prescription_id :integer
#  quantity        :integer
#

# class Dosage < ActiveRecord::Base
#   has_many :prescriptions
#   has_one :supplement
# end
