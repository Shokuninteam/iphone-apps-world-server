class AppsController < AdminsController

  def new
      @category = Category.find(params[:category_id])
      @app = @category.apps.new
  end

  def create
    @category = Category.find(params[:category_id])
    @app = @category.apps.create(app_params)
    redirect_to category_path(@category)
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy
    redirect_to categories_path
  end

  def edit
    
    @app = App.find(params[:id])

  end


  def update
    #@category = Category.find(params[:category_id])
    @app = App.find(params[:id])
    if @app.update(app_params)
      redirect_to app_path(@app)
    else
      render 'edit'
    end
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
