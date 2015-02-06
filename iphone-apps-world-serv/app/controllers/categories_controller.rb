class CategoriesController < AdminsController
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if(@category.save)
      redirect_to @category
    else
      render 'new'
    end
    render plain: params[:category].inspect
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if@category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def index
    @Categories = Category.all
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
