class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


	def get_url
		@url = get_image_url(params[:id])
		return @url
	end

	 def get_image_url(id)
	    @image = Image.find(id)
	    @article = App.find(@image.app_id)
	    @a = @image.image.url
	    #@a.push(URI.join(request.url, @image.image.url), @article.id)
    return  @a 
  end


end
