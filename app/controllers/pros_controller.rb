class ProsController < AdminsController
	def new
		@app = App.find(params[:app_id])
		@pro = @app.pros.new  
  	end

  	def create
		
    	@app = App.find(params[:app_id])
    	@pro = @app.pros.create(pro_params)
    	redirect_to edit_app_path(@app)
  	end

  	def index 
  	end

  	def destroy
  		@pro = Pro.find(params[:id])
  		@pro.destroy

  		redirect_to app_path(@pro.app_id)
  	end

  	def edit
  		@pro = Pro.find(params[:id])
  	end

  	def update
  		@pro = Pro.find(params[:id])
   		if @pro.update(pro_params)
   		   	redirect_to app_path(@pro.app_id)
    	else
      		render 'edit'
    	end
  	end

  	def show
  		#@category = Category.find(params[:category_id])
    	@app = App.find(params[:id])
    	#@pro = @app.pros.build
  	end

  	  private
    def pro_params
      params.require(:pro).permit(:content)
    end
end
