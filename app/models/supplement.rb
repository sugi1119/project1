# == Schema Information
#
# Table name: supplements
#
#  id        :integer          not null, primary key
#  item_name :string(255)
#  amount    :float
#  item_cost :float
#

class Supplement < ActiveRecord::Base
  has_many :prescriptions, :through => :prescription_supplements
  has_many :prescription_supplements

  # belongs_to :dosages
  def fancy_name
    "#{self.try(:item_name)} - #{self.try(:amount)} - #{self.try(:item_cost)}"
  end
end
