class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @source_ip_address = request.headers["X-Forwarded-For"]
  end

  def show
    @article = Article.find(params[:id])
    @user_agent = request.headers["User-Agent"]
  end
end
