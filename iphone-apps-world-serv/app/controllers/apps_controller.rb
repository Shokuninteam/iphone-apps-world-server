class AppsController < AdminsController

 # def new
  #end

  def create
    @cat = Category.find(params[:category_id])
    @app = @cat.apps.create(app_params)
    redirect_to @cat
  end

  def destroy
    @cat = Category.find(params[:category_id])
    @app = @cat.apps.find(params[:id])
    @app.destroy
    redirect_to category_path(@cat)
  end

  def edit

  end


  def update
    @cat = Category.find(params[:category_id])
    @app = @cat.apps.update(app_params)
  end

  #def show
  #end

 # def index
 # end
  
  private 
  def app_params
    params.require(:app).permit(:url, :name, :price, :description)
  end
end
