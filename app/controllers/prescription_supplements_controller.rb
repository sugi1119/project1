class PrescriptionSupplementsController < ApplicationController

  def new
    @prescription_supplement = PrescriptionSupplement.new(:prescription_id => params[:prescription_id].to_i)
  end


  def create
    # raise 'err'
    # p = Prescription.find params[:prescription_id]
    # qty = params[:qty]

 #raise params.inspect
    p = PrescriptionSupplement.new(prescription_supplement_params)
#raise 'err'
    p.save



    #supplement = Supplement.find params[:supplement_id]

    #p.prescription_supplements.new qty: qty, supplement_id: supplement.id
    #p.save

    redirect_to Prescription.find(p.prescription_id)

  end

  def edit
    @prescription_supplement = PrescriptionSupplement.find params[:id]
  end

  private
  def prescription_supplement_params
    params.require(:prescription_supplement).permit(:qty, :prescription_id, :supplement_id)
  end

end