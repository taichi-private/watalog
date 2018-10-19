class ArticleController < ApplicationController
  def index
    @articles = Article.published.all
  end
  def show
  end
end
