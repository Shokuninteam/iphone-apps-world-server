class ProsController < AdminsController
	def create
    	@cat = Category.find(params[:category_id])
    	@app = @cat.apps.find(params[:id])
    	@pro = @cat.pros.create(pro_params)
    	redirect_to @cat
  	end
end
