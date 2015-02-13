class Top10sController < ApplicationController

	def new
		@app = App.find(params[:app_id])
		@top10 = @app.top10s.new  
  	end

  	def create
		
    	@app = App.find(params[:app_id])
    	@top10 = @app.top10s.create(top10_params)
    	redirect_to edit_app_path(@app)
  	end

  	def index 
  		@top10s = App.joins(:top10s).select("top10S.id", :name, :rank ).where(released: true).order("rank")
  	end

  	def destroy
  		@top10 = Top10.find(params[:id])
  		@top10.destroy

  		redirect_to app_path(@top10.app_id)
  	end

  	def edit
  		@top10 = Top10.find(params[:id])
  	end

  	def update
  		@top10 = Top10.find(params[:id])
   		if @top10.update(top10_params)
   		   	redirect_to app_path(@top10.app_id)
    	else
      		render 'edit'
    	end
  	end

  	def show
  		#@category = Category.find(params[:category_id])
    	@app = App.find(params[:id])
    	#@top10 = @app.top10s.build
  	end

  	  private
    def top10_params
      params.require(:top10).permit(:rank)
    end
end

