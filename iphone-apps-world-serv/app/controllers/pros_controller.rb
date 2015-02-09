class ProsController < AdminsController
	def create
		#@category = Category.find(params[:category_id])
    	@app = App.find(params[:id])
    	@pro = @app.pros.create(pro_params)
    	redirect_to @app
  	end
  	
  	def new
  	end

  	def index 
  	end

  	def edit
  		@pro = Pro.find(params[:id])
  	end

  	def show
  		#@category = Category.find(params[:category_id])
    	@app = App.find(params[:id])
    	@pro = @app.pros.build
  	end
end
