class PrescriptionsController < ApplicationController

  def index
    @prescriptions = Prescription.all
  end

  def create
    # raise params.inspect
    # @appointment = Appointment.find params[:appointment_id]
    prescription = Prescription.create prescription_params
    prescription.appointment_id = params[:appointment_id]
      prescription.save

      redirect_to prescription_path(prescription)
  end

  def new
    @appointment = Appointment.find params[:appointment_id]

    @prescription = Prescription.new

    #@supplement = Supplement.find params[:supplement_id]
#raise params.inspect
  end

  def edit
    @prescription = Prescription.find params[:id]
  end

  def show
    # raise 'err'
    @prescription = Prescription.find params[:id]
#raise 'err'
    # @supplement = @prescription.supplements.first # Supplement.find params[:id]
    #raise params.inspect
   # @appointment = Appointment.find params[:appointment_id]

  end

  def update
    # raise params.inspect
    @appointment = Appointment.find params[:appointment_id]
    prescription = Prescription.find params[:id]
    prescription.update prescription_params

    redirect_to prescription
  end

  def destroy
    prescription = Prescription.find params[:id]

    prescription.destroy

    redirect_to prescriptions_path

  end

  def choose
    @supplements = Supplement.all
  end

  def add_supplements
raise params.inspect
    prescription = Prescription.find params[:id]
    prescription.save

    params[:supplement].each do |supplement_id, quantity|
     supplement = Supplement.find supplement_id
     if quantity.present?
    #      dosage = Dosage.create(:quantity => quantity, :supplement_id => supplement_id)
    #      prescription.dosages << dosage
       end
    end
# raise params.inspect
    redirect_to prescription_path #go to show page
  end

  private
  def prescription_params
    params.require(:prescription).permit(:recomendation, :dosage, :appointment_id)
  end
end

#    prescriptions GET    /prescriptions(.:format)          prescriptions#index
#                   POST   /prescriptions(.:format)          prescriptions#create
#  new_prescription GET    /prescriptions/new(.:format)      prescriptions#new
# edit_prescription GET    /prescriptions/:id/edit(.:format) prescriptions#edit
#      prescription GET    /prescriptions/:id(.:format)      prescriptions#show
#                   PATCH  /prescriptions/:id(.:format)      prescriptions#update
#                   PUT    /prescriptions/:id(.:format)      prescriptions#update
#                   DELETE /prescriptions/:id(.:format)      prescriptions#destroy

#  recommendation :text
#  dosage         :string(255)
#  appointment_id :integer