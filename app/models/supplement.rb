# == Schema Information
#
# Table name: supplements
#
#  id        :integer          not null, primary key
#  item_name :string(255)
#  amount    :float
#

class Supplement < ActiveRecord::Base
  has_many_and_belongs_to :prescription

end
