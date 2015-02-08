class ProsController < AdminsController
	def create
    	@app = App.find(params[:id])
    	@pro = @app.pros.create(pro_params)
    	redirect_to @app
  	end
  	def new
  	end

  	def index 
  	end
end
