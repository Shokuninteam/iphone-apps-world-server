class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).joins(:images).select("images.id AS id_image, apps.*").where(released: true).order("rank").order("top10s.updated_at DESC").group("rank")
    	#@articles = App.joins(:images).where(released: true).limit(10).order("apps.updated_at DESC").uniq
    	@categories = Category.all
    	@count = App.count(released: true)
    	@result = App.joins(:images).select("images.id AS id_image, apps.*").where(released: true).limit(10).order("apps.updated_at DESC").uniq
    	
    	@macroArticles = []
   		@macroArticles = get_articles_with_logo_image(@result)
	    
	    @macroTop10 = []
	    @macroTop10 = get_articles_with_logo_image(@top10)
		render :json => {
			top10: @macroTop10,
  			categories: @categories,
  			macro: @macroArticles,
  			total: @count
			 }
	end
end

