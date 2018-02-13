class RagotsController < ApplicationController
  before_action :authenticate_moussaillon! #pour bloquer les pages si tu n'es pas logé 
  
  def index
  	@ragots = Ragot.all
  end

  def new
  	@ragot = Ragot.new
  end

  def show
  	@ragot = Ragot.find(params[:id])
  end

  def create
  	@ragot = Ragot.new(ragot_params)
  	@ragot.moussaillon_id = current_moussaillon.id
  	if @ragot.save
  	  redirect_to @ragot
  	else
  	  render 'new'
  	end
  end

  def edit
    @ragot = Ragot.find(params[:id])
  end

  def update
	@ragot = Ragot.find(params[:id])
	@ragot.moussaillon_id = current_moussaillon.id
	if @ragot.update(ragot_params)
	  flash[:success] = "Ragot bien édité"
	  redirect_to ragots_path
	else
	  render 'edit'
    end
   end

   def destroy
   	@ragot = Ragot.find(params[:id])
   	if @ragot.destroy
   	  flash[:success] = "Ragot bien supprimé"
   	  redirect_to ragots_path
   	else
   	  render 'edit'
   	end
   end

private

  def ragot_params
 	params.require(:ragot).permit(:content)
  end

end
