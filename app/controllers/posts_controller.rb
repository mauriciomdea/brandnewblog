class PostsController < ApplicationController
  
  def new
    
    @post = Post.new

  end
  
  def create
    
    @post = Post.new(params[:post])

    if @post.save
      redirect_to(@post, :notice => 'Post successfully created.')
    else
      render :action => :new
    end
    
  end
  
  def show
    
    @post = Post.find(params[:id])
  
  end
  
  def edit
    
    @post = Post.find(params[:id])
  
  end

  def update
    
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to(@post, :notice => 'Post was successfully updated.')
    else
      render :action => :edit
    end
    
  end
  
end
