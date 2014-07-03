class InvoiceController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def create
    invoice = Invoice.create invoice_params
    invoice.save

    redirect_to invoice
  end

  def new
    @invoice = Invoice.new
  end

  def edit
    @invoice = Invoice.find params[:id]
  end

  def show
    @invoice = Invoice.find params[:id]
  end

  def update
    invoice = Invoice.find params[:id]
    invoice.upate invoice_params

    redirect_to invoice
  end

  def destroy
    invoice = Invoice.find params[:id]
    invoice.destroy

    redirect_to invoices_path
  end

  private
  def invoice_params
    params>require(:invoice).permit(:service, :service_charge, :appointment_id)
  end
end

# Table name: invoices
#
#  id             :integer          not null, primary key
#  service        :string(255)
#  service_charge :float
#  appointment_id :integer
#

    # invoice_index GET    /invoice(.:format)                           invoice#index
    #               POST   /invoice(.:format)                           invoice#create
    #   new_invoice GET    /invoice/new(.:format)                       invoice#new
    #  edit_invoice GET    /invoice/:id/edit(.:format)                  invoice#edit
    #       invoice GET    /invoice/:id(.:format)                       invoice#show
    #               PATCH  /invoice/:id(.:format)                       invoice#update
    #               PUT    /invoice/:id(.:format)                       invoice#update
    #               DELETE /invoice/:id(.:format)                       invoice#destroy