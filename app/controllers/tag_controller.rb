class TagController < ApplicationController
  def index
  end
  def show
    @tag = Tag.includes(:article_tags).find(params[:id])
  end
end
