class ConsController < AdminsController
def create
    @app = App.find([:id])
    @con = @app.cons.create(con_params)
    redirect_to @app
  end

  def show 
  	@con = Con.find(params[:id])
  end

end
