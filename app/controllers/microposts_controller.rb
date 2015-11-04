class MicropostsController < ApplicationController

	def index
		@microposts = Micropost.all
	end
	def new
		@micropost = Micropost.new
	end
	def create
		@micropost = Micropost.new(micropost_params)
		if @micropost.save
			redirect_to "/microposts/index"
		else
			redirect_to "/"
		end
	end
	def show
		@micropost = Micropost.find(params[:id])
	end	
	
	private
	def micropost_params
		params.require(:micropost).permit(:content, :picture)
	end
end
