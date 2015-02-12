class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).where(released: true).order("rank").order("top10s.updated_at DESC").group("rank")
    	@articles = App.joins(:images).where(released: true).limit(10).order("apps.updated_at DESC").uniq
    	@categories = Category.all
    	@count = App.count(released: true)
    	#@urls = {}
    	@macro=[]
   		@result = App.joins(:images).select("images.id AS id_image, apps.*").where(released: true).limit(10).order("apps.updated_at DESC").uniq
    	@categories = Category.all

    		
   
    	
	    	@result.each do |i|
	    		#@temp = get_image_url(i.id)
	    		#i << get_image_url(i.id)
	    		puts(get_image_url(i.id_image))
	    		@urls = {}
	    		@urls[:url] = get_image_url(i.id_image)
	    		@urls[:app] = i
	    		@macro.push(@urls)
	    		
	    		#@combined = i+@temp
	    	end
	    	
	    	#@resultatsarticles = @articles.joins(@urls[2]).where(id: @urls[2])
	    	#@resultats = @urls.joins(@result).select(@urls, @result).where(id_app: @result)
	
    	#@result = @articles << @urls
		#@count = @articles.count()
		render :json => {
			#top10: @top10,
  			#articles: @articles,
  			#categories: @categories,
  			#images: @images,
  			#result: @result,
  			#combined: @combined,
  			#resultatsarticles: @resultatsarticles,
  			macro: @macro,
  			#urls: @urls,
  			total: @count
			 }
	end
end

