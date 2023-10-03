class ArticlesController < ApplicationController
  def show
    # debugger
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article]
    # render plain: @article.inspect
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = 'Article was created successfully.'
      # redirect_to article_path(@article) # Vào rails routes --expanded để xem prefix và URI
      redirect_to @article # shortcut
    else
      render 'new', status: 303
    end
  end
end