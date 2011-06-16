class HomeController < ApplicationController

  def index
    
    if params[:year]
      @posts = Post.where("created_at LIKE :year", { :year => "%#{params[:year]}%" }).order('created_at DESC').limit(5)
    else
      @posts = Post.order('created_at DESC').limit(5)
    end
    
    @tags = Tag.order('name')
  
  end

  def who
  end

end
