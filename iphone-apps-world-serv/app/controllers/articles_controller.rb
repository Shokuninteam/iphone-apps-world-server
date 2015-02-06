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
    	render json: {
    		article: @article,
    		pros: @pros,
    		cons: @cons
    	}
	end

	def showArticlesByCat
		@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10)
		@count = @articlesByCat.count()
		render json: {
			articles: @articlesByCat,
			total: @count
		}

	end

	def showPaginateArticlesByCat
		@num = calcOffset(params[:page].to_i)
		@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10).offset(@num)
	end


	def searchArticles
		@articlesBySearch = App.where("name like ?", "%#{params[:name]}%").where(released: true).limit(10).order("updated_at DESC")
		@count = @articlesBySearch.count()
		render json: {
			articles: @articlesBySearch,
			total: @count
		}

	end

	def searchPaginateArticles
		@num = calcOffset(params[:page].to_i)
		@articlesBySearch = App.where("name like ?", params[:name]).where(released: true).limit(10).order("updated_at DESC").offset(@num)
	end

end
