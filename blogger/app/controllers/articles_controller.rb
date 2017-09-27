class ArticlesController < ApplicationController
  # the ArticlesController class is-a Application Controller

  # an action is a member of the controller
  def index
    # the index function provides the "article" on
    # the index (home) page. We want all the articles
    @article = Article.all
  end

  def show
    # this sets the article to a single article
    # by searching for the :id symbol, which is unique
    # and passed to all scope levels
    @article = Article.find(params[:id])
  end

end
