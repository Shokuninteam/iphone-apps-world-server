class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).where(released: true).order("rank")
    	@articles = App.where(released: true).limit(10).order("updated_at DESC")
    	@categories = Category.all
    	@count = App.count(released: true)
		render :json => {
			:top10 => @top10,
  			:articles => @articles,
  			:categories => @categories,
  			:total => @count
			 }
	end
end
