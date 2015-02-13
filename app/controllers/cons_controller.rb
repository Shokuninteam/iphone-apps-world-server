class ConsController < AdminsController
	def new
		@app = App.find(params[:app_id])
		@con = @app.cons.new  
  	end

  	def create
		
    	@app = App.find(params[:app_id])
    	@con = @app.cons.create(con_params)
    	redirect_to edit_app_path(@app)
  	end

  	def index 
  	end

  	def destroy
  		@con = Con.find(params[:id])
  		@con.destroy

  		redirect_to app_path(@con.app_id)
  	end

  	def edit
  		@con = Con.find(params[:id])
  	end

  	def update
  		@con = Con.find(params[:id])
   		if @con.update(con_params)
   		   	redirect_to app_path(@con.app_id)
    	else
      		render 'edit'
    	end
  	end

  	def show
  		#@category = Category.find(params[:category_id])
    	@app = App.find(params[:id])
    	#@con = @app.cons.build
  	end

  	  private
    def con_params
      params.require(:con).permit(:content)
    end

end
