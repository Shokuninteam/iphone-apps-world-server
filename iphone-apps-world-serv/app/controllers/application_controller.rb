class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	 def get_image_url(id)
	    @image = Image.find(id)
	   # @article = App.find(@image.app_id)
	    @a = @image.image.url
	    #@a.push(URI.join(request.url, @image.image.url), @article.id)
    return  @a 
  end

#a modifier une fois le token en place
#la requête prend un objet d'apps avec le champ 
#:images.id AS id_image aggrégé en +
  def get_articles_with_logo_image(apps)
    	@macro = []
    	apps.each do |app|
    		puts(get_image_url(app.id_image))
    		@urls = {}
    		@urls[:url] = get_image_url(app.id_image)
    		@urls[:app] = app
    		@macro.push(@urls)
    	end
    	return @macro
  end

  def get_all_images_for_article(app)
  	@macro = []
  	@images = Image.where(app_id: app.id)
  	@images.each do |image|
  		@macro.push(get_image_url(image.id))
  	end
  	return @macro
  end



end
