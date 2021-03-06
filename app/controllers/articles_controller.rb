class ArticlesController < ApplicationController
  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end
end
