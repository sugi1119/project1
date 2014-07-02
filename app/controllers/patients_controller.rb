class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def create
    patient = Patient.create patient_params
    patient.save
    redirect_to patient
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def show
    @patient = Patient.find params[:id]
  end

  def update
    patient = Patient.find params[:id]
    patient.update patient_params

    redirect_to patient
  end

  def destroy
  end

  private
  def patient_params
    params.require(:patient).permit(:f_name, :m_name, :l_name, :title, :address, :postcode, :dob, :phone, :mobile, :occupation)
  end
end

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
#         patients GET    /patients(.:format)              patients#index
#                  POST   /patients(.:format)              patients#create
#      new_patient GET    /patients/new(.:format)          patients#new
#     edit_patient GET    /patients/:id/edit(.:format)     patients#edit
#          patient GET    /patients/:id(.:format)          patients#show
#                  PATCH  /patients/:id(.:format)          patients#update
#                  PUT    /patients/:id(.:format)          patients#update
#                  DELETE /patients/:id(.:format)          patients#destroy