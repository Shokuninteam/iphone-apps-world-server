class ArticlesController < ApplicationController
 
 	def paginateMainPage
		@num = calcOffset(params[:page].to_i)
		@articles = App.where(released: true).limit(10).offset(@num).order("updated_at DESC")
		@images = Image.where(app_id: @articles)
		render :json => {
			articles: @articles,
			images: @images
			} 
	end

	def calcOffset(num)
		return num * 10 - 10
	end

	def show
		@article = App.where(released: true, name:params[:name]).first
		@pros = Pro.where(app_id: @article)
    	@cons = Con.where(app_id: @article)
    	@images = Image.where(app_id: @article)
    	render json: {
    		article: @article,
    		pros: @pros,
    		cons: @cons,
    		image: @images
    	}
	end

	def showArticlesByCat
		#@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10)
		@temp = App.joins(:category).where(released: true).where({categories: {name: params[:name]}})
		@articlesByCat= @temp.limit(10)
		@images = Image.where(app_id: @articlesByCat)
		@count = @temp.count()
		render json: {
			articles: @articlesByCat,
			images: @images,
			total: @count
		}

	end

	def showPaginateArticlesByCat
		@num = calcOffset(params[:page].to_i)
		@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10).offset(@num)
		@images = Image.where(app_id: @articlesByCat)
		render json: {
			articles: @articlesByCat,
			images: @images.get_image_url(@image.id)
		}
	end


	def searchArticles
		@temp = App.where("name like ?", "%#{params[:name]}%").where(released: true).order("updated_at DESC")
		@articlesBySearch = @temp.limit(10)
		@images = Image.where(app_id: @articlesBySearch)
		@count = @temp.count()
		render json: {
			articles: @articlesBySearch,
			images: @images,
			total: @count
		}

	end

	def searchPaginateArticles
		@num = calcOffset(params[:page].to_i)
		@articlesBySearch = App.where("name like ?", "%#{params[:name]}%").where(released: true).order("updated_at DESC").offset(@num).limit(10)
		@images = Image.where(app_id: @article)
		render json: {
			articles: @articlesBySearch,
			images: @images
		}
	end

end
