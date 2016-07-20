class ApplicationController < ActionController::Base
	def show

		@article = Article.find(params[:id])
	end

	def new
	end
	
  protect_from_forgery with: :exception
end
