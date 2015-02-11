class ArticlesController < ApplicationController
 
 	def paginateMainPage
		@num = calcOffset(params[:page].to_i)
		@articles = App.where(released: true).limit(10).offset(@num).order("updated_at DESC")
		render json: @articles
	end

	def calcOffset(num)
		return num * 10 - 10
	end

	def show
		@article = App.where(released: true, name:params[:name]).first
		@pros = Pro.where(app_id: @article)
    	@cons = Con.where(app_id: @article)
    	@image = Image.where(app_id: @article)
    	render json: {
    		article: @article,
    		pros: @pros,
    		cons: @cons,
    		image: @image
    	}
	end

	def showArticlesByCat
		#@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10)
		@temp = App.joins(:category).where(released: true).where({categories: {name: params[:name]}})
		@articlesByCat= @temp.limit(10)
		@count = @temp.count()
		render json: {
			articles: @articlesByCat,
			total: @count
		}

	end

	def showPaginateArticlesByCat
		@num = calcOffset(params[:page].to_i)
		@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10).offset(@num)
		render json: @articlesByCat
	end


	def searchArticles
		@temp = App.where("name like ?", "%#{params[:name]}%").where(released: true).order("updated_at DESC")
		@articlesBySearch = @temp.limit(10)
		@count = @temp.count()
		render json: {
			articles: @articlesBySearch,
			total: @count
		}

	end

	def searchPaginateArticles
		@num = calcOffset(params[:page].to_i)
		@articlesBySearch = App.where("name like ?", "%#{params[:name]}%").where(released: true).order("updated_at DESC").offset(@num).limit(10)
		render json: @articlesBySearch
	end

end
