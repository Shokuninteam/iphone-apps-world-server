class ImagesController < AdminsController

  def new 
    @app = App.find(params[:app_id])
    @image = @app.images.new
  end

  def create
    @app = App.find(params[:app_id])
    @image = @app.images.create(image_params)
    redirect_to app_path(@app)
  end

  def edit
      @image = Image.find(params[:id])
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to app_path(@image.app_id)
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      redirect_to app_path(@image.app_id)
    else
      render 'edit'
    end
  end


#json utile pour le client
  def show
    @app = App.find(params[:id])
    @image = @app.images.find(params[:id])
    render json: @image
  end

  private
    def image_params
      params.require(:image).permit(:name, :image)
    end

end
