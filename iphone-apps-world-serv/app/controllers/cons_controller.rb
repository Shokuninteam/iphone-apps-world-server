class ConsController < AdminsController
def create
    @cat = Category.find(params[:category_id])
    @app = @cat.apps.find([:id])
    @con = @app.cons.create(con_params)
    redirect_to @cat
  end
end
