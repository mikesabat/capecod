class StoresController < ApplicationController
  def new
  	@store = Store.new
  end

  def create
  	@store = Store.new(store_params)
  	@store.save

  	respond_to do |format|
      if @store.save #redirecting to root -- need to change to "add Folder"
        format.html { redirect_to root_path, notice: 'Pin was successfully created.' }
        format.json { render action: '#', status: :created, location: @store }
      else
        format.html { render action: 'new' }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  def index #Do we need a store index view?
  	@stores = Store.all
  end

  def store_params
      # Never trust parameters from the scary internet, only allow the white list through.
      params.require(:store).permit(:name, :address, :city, :state, :zip, :area)
  end


end
