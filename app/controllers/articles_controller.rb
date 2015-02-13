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
    	#@images = Image.where(app_id: @article)
    	@macro = []
    	@macro = get_all_images_for_article(@article)
    	render json: {
    		article: @article,
    		pros: @pros,
    		cons: @cons,
    		image: @macro
    	}
	end

	def showArticlesByCat
		#@articlesByCat = App.joins(:category).where(released: true).where({categories: {name: params[:name]}}).limit(10)
		@temp = App.joins(:category).joins(:images).select("images.id AS id_image, apps.*").where(released: true).where({categories: {name: params[:name]}})
		@articlesByCat= @temp.limit(10)
		@articlesWithLogo = []
		@articlesWithLogo = get_articles_with_logo_image(@articlesByCat)
		@count = @temp.count(:id)
		render json: {
			articles: @articlesWithLogo,
			total: @count
		}

	end

	def showPaginateArticlesByCat
		@num = calcOffset(params[:page].to_i)
		@articlesByCat = App.joins(:category).joins(:images).select("images.id AS id_image, apps.*").where(released: true).where({categories: {name: params[:name]}}).limit(10).offset(@num)
		@articlesWithLogo = []
		@articlesWithLogo= get_articles_with_logo_image(@articlesByCat)
		render json: @articlesWithLogo
		
	end


	def searchArticles
		@temp = App.joins(:images).select("images.id AS id_image, apps.*").where("apps.name like ?", "%#{params[:name]}%").where(released: true).order("updated_at DESC")
		@articlesBySearch = @temp.limit(10)
		@articlesWithLogo = []
		@articlesWithLogo =  get_articles_with_logo_image(@articlesBySearch)
		@count = @temp.count(:id)
		render json: {
			articles: @articlesWithLogo,
			total: @count
		}

	end

	def searchPaginateArticles
		@num = calcOffset(params[:page].to_i)
		@articlesBySearch = App.joins(:images).select("images.id AS id_image, apps.*").where("name like ?", "%#{params[:name]}%").where(released: true).order("updated_at DESC").offset(@num).limit(10)
		@articlesWithLogo = []
		@articlesWithLogo = get_articles_with_logo_image(@articlesBySearch)
		render json: @articlesWithLogo
	end

end
