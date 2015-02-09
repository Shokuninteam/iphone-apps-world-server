class AppsController < AdminsController

  def new
  end

  def create
    @category = Category.find(params[:category_id])
    @app = @category.apps.create(app_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @app = @category.apps.find(params[:id])
    @app.destroy
    redirect_to category_path(@category)
  end

  def edit
    #@category = Category.find(params[:category_id])
    @app = App.find(params[:id])

  end


  def update
    @category = Category.find(params[:category_id])
    @app = @category.apps.update(app_params)
  end

  def show
    @app = App.find(params[:id])
  end

 def index
 end
  
  private 
  def app_params
    params.require(:app).permit(:url, :name, :price, :description)
  end
end
