class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).where(released: true).order("rank").order("top10s.updated_at DESC").group("rank")
    	@articles = App.joins(:images).where(released: true).limit(10).order("apps.updated_at DESC")
    	@categories = Category.all
    	@count = App.count(released: true)
    	@images = Image.where(app_id: @articles)
		#@count = @articles.count()
		render :json => {
			top10: @top10,
  			articles: @articles,
  			categories: @categories,
  			images: @images,
  			total: @count
			 }
	end
end

