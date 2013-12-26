class FoldersController < ApplicationController
	

	def new
		@folder = Folder.new								
	end

	def create
		@folder = Folder.new(folder_params)
  	@folder.save

  	respond_to do |format|
      if @folder.save #redirecting to root -- need to change to "add Folder"
        format.html { redirect_to root_path, notice: 'Pin was successfully created.' }
        format.json { render action: '#', status: :created, location: @folder }
      else
        format.html { render action: 'new' }
        format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
	end

	def folder_params
      # Never trust parameters from the scary internet, only allow the white list through.
      params.require(:folder).permit(:store_id, :season, :description)
  end
end