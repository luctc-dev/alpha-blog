class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
    # debugger
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    # render plain: params[:article]
    # render plain: @article.inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'Article was created successfully.'
      # redirect_to article_path(@article) # Vào rails routes --expanded để xem prefix và URI
      redirect_to @article # shortcut
    else
      render 'new', status: 303
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article was updated successfully.'
      redirect_to @article
    else
      render 'edit', status: 303
    end
    # debugger
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
    params.require(:article).permit(:title, :description)
  end
end