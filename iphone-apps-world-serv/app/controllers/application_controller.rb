class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	 def get_image_url(id)
	    @image = Image.find(id)
	    @article = App.find(@image.app_id)
	    @a = @image.image.url
	    #@a.push(URI.join(request.url, @image.image.url), @article.id)
    return  @a 
  end

#a modifier une fois le token en place
  def get_articles_with_logo_image(apps)
    	
    	apps.each do |i|
    		puts(get_image_url(i.id_image))
    		@urls = {}
    		@urls[:url] = get_image_url(i.id_image)
    		@urls[:app] = i
    		@macro.push(@urls)
    	end
    	return @macro
  end


end
