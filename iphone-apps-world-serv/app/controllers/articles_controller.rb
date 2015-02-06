class ArticlesController < ApplicationController
 
 	def page
		@num = calcOffset(params[:page].to_i)
		puts(@num)
		@articles = App.where(released: true).limit(10).offset(@num).order("updated_at DESC")
		render json: @articles
	end

	def calcOffset(num)
		return num * 10 - 10
	end

	def show
		@article = App.where(released: true, name:params[:name])
		render json: @article
	end

	def getArticlesByCat
		@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10)
		render json: @articlesByCat
	end

end
