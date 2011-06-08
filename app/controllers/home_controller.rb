class HomeController < ApplicationController

  def index
    
    @posts = Post.all
  
  end

  def who
  end

end
