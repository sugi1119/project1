class PrescriptionSupplement < ActiveRecord::Base
  belongs_to :prescription
  belongs_to :supplement
end