class WelcomeController < ApplicationController
  def index
  		@top10 = Pro.where(app_id: App.all)
    	render json: @top10
  end
end
