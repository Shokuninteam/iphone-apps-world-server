class GlobalsController < ApplicationController

	def index
		@top10 = App.joins(:top10s).where(released: true).order("rank").order("top10s.updated_at DESC").group("rank")
    	@articles = App.joins(:images).where(released: true).limit(10).order("apps.updated_at DESC")
    	@categories = Category.all
    	@count = App.count(released: true)
    	@urls = []
    	@combined = []
    	@images = Image.where(app_id: @articles)
    #	puts(@images.count)
    	
   
    		
   

    	@images.each do |i|
    		#@temp = get_image_url(i.id)
    		#i << get_image_url(i.id)
    		@urls.push(get_image_url(i.id))
    		#@combined = i+@temp
    	end
    	@result = @images << @urls
		#@count = @articles.count()
		render :json => {
			top10: @top10,
  			articles: @articles,
  			categories: @categories,
  			images: @images,
  			result: @result,
  			#combined: @combined,
  			#urls: @urls,
  			total: @count
			 }
	end
end

