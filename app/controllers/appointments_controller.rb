class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all

   # raise params.inspect
  end

  def create
    appointment = Appointment.new appointment_params
    date = params[:appointment][:appointment_date] + ' ' +
           params[:appointment][:appointment_time]
    appointment.appointment_date = date
    appointment.save


    # if @appointment.appointment_date == Date.today
    #   p "today"
    # end
    # params[:appointment][:appointment_date]
    # appointment.save
    # raise params.inspect
    redirect_to appointment
  end

  def new
    @appointment = Appointment.new
  end

  def edit
    @appointment = Appointment.find params[:id]

  end

  def show
    @appointment = Appointment.find params[:id]
    @appointments = Appointment.all
    # raise params.inspect
   #  app_practioner = @appointment.practioner_id
   # x = Practioner.find app_practioner
   # @p_name = x.name

   # app_patient = @appointment.patient_id
   # z = Patient.find app_patient
   # @a_name = z.f_name + z.m_name + z.l_name

    # id = appointment.practioner_id
    # name = Practioner.find s
  # = practioner.find appointment.practioner_id

  end

  def update
    appointment = Appointment.find params[:id]
    date = params[:appointment][:appointment_date] + ' ' +
           params[:appointment][:appointment_time]
    appointment.appointment_date = date
    appointment.save
    appointment.update appointment_params

    if params[:prescription] == 'Yes'
      redirect_to new_prescription_path appointment.id
    else
      redirect_to appointment
    end
  end

  def destroy
    appointment = Appointment.find params[:id]
     # raise params.inspect
    appointment.destroy

    redirect_to appointments_path

  end

  private
  def appointment_params
    params.require(:appointment).permit(:patient_id, :practioner_id, :notes)
    # params[:appointment][:appointment_date] => '6/7/2014'
  end

end
# Table name: appointments
#
#  id               :integer          not null, primary key
#  appointment_date :datetime
#  patient_id       :integer
#  practioner_id    :integer
#
#     appointments GET    /appointments(.:format)          appointments#index
#                  POST   /appointments(.:format)          appointments#create
#  new_appointment GET    /appointments/new(.:format)      appointments#new
# edit_appointment GET    /appointments/:id/edit(.:format) appointments#edit
#      appointment GET    /appointments/:id(.:format)      appointments#show
#                  PATCH  /appointments/:id(.:format)      appointments#update
#                  PUT    /appointments/:id(.:format)      appointments#update
#                  DELETE /appointments/:id(.:format)      appointments#destroy