class ArticlesController < ApplicationController
  # the ArticlesController class is-a Application Controller

  include ArticlesHelper
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

  def new
    @article = Article.new
  end

  # include "fail" to stop process and see params
  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article ''#{@article.title}' Created!"

    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    title = @article.title
    @article.destroy

    flash.notice = "Article '#{title}' Destroyed!"

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article ''#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end

end
