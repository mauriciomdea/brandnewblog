class PostsController < ApplicationController
  
  before_filter :authenticate, :except => [:show]
  
  def index
    
    redirect_to :action => :index, :controller => :home
    
  end
  
  def new
    
    @post = Post.new
    @tags = ""

  end
  
  def create
    
    @post = Post.new(params[:post])
    
    for tag in params[:string_tags].split(",")
      t = Tag.find_by_name(tag.strip)
      if t.nil?
         t = Tag.new :name => tag.strip
      end
      @post.tags << t
    end

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
    @tags = @post.tags.map { |t| t.name }.join(", ")
  
  end

  def update
    
    @post = Post.find(params[:id])
    
    @post.tags.delete_all
    for tag in params[:string_tags].split(",")
      t = Tag.find_by_name(tag.strip)
      if t.nil?
         t = Tag.new :name => tag.strip
      end
      @post.tags << t
    end

    if @post.update_attributes(params[:post])
      redirect_to(@post, :notice => 'Post was successfully updated.')
    else
      render :action => :edit
    end
    
  end
  
end
