class ArticlesController < ApplicationController
  access all: [:index], user: {except: [:destroy, :new, :edit, :create]}, editor: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_article, only: [:show, :update, :edit, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create 
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def destroy 
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :category)
  end
end
