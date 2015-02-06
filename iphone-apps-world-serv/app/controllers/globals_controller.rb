class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).where(released: true).order("rank")
    	@articles = App.where(released: true).group("apps.id").limit(10).order("apps.updated_at DESC")
    	@pros = Pro.where(app_id: @articles)
    	@cons = Con.where(app_id: @articles)

    	@categories = Category.all
    	@count = App.count(released: true)
		#@count = @articles.count()
		render :json => {
			top10: @top10,
  			articles: @articles,
  			pros: @pros,
  			cons: @cons,
  			categories: @categories,
  			total: @count
			 }
	end
end

