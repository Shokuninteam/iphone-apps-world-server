class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).where(released: true).order("rank").order("top10s.updated_at DESC").group("rank")
    	#@articles = App.joins(:images).where(released: true).limit(10).order("apps.updated_at DESC").uniq
    	@categories = Category.all
    	@count = App.count(released: true)
    	#@urls = {}
    	@result = App.joins(:images).select("images.id AS id_image, apps.*").where(released: true).limit(10).order("apps.updated_at DESC").uniq
    	@macro = []
   		@macro = get_articles_with_logo_image(@result)
	    
		render :json => {
			top10: @top10,
  			#articles: @articles,
  			categories: @categories,
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

