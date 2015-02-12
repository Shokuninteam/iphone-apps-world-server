class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


	def get_url
		@url = get_image_url(params[:id])
		render json: @url
	end

	 def get_image_url(id)
    @image = Image.find(params[:id])
    puts(@image.name)
    @a = URI.join(request.url, @image.image.url)
    return @a
  end


end
