class SupplementsController < ApplicationController

  def index
    #raise params.inspect
      @supplements = Supplement.all
      # supplement = Supplement.find params[:id]
  end

  def create
    # raise params.inspect
    supplement = Supplement.create supplement_params
    supplement.save

  redirect_to supplement

  end

  def new
    @supplement = Supplement.new
  end

  def edit
    @supplement = Supplement.find params[:id]

  end

  def show
    #raise params.inspect
    @supplement = Supplement.find params[:id]

    @supplements = Supplement.all

  end

  def update
    raise params.inspect
    supplement = Supplement.find params[:id]
    supplement.update supplement_params

    redirect_to supplement

  end

  def destroy
    supplement = Supplement.find params[:id]
    supplement.destroy

    redirect_to supplements_path

  end

  private
  def supplement_params
    params.require(:supplement).permit(:item_name, :amount, :item_cost)
  end

end

#       supplements GET    /supplements(.:format)                       supplements#index
#                   POST   /supplements(.:format)                       supplements#create
#    new_supplement GET    /supplements/new(.:format)                   supplements#new
#   edit_supplement GET    /supplements/:id/edit(.:format)              supplements#edit
#        supplement GET    /supplements/:id(.:format)                   supplements#show
#                   PATCH  /supplements/:id(.:format)                   supplements#update
#                   PUT    /supplements/:id(.:format)                   supplements#update
#                   DELETE /supplements/:id(.:format)                   supplements#destroy