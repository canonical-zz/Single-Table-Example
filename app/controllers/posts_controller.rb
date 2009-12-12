class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    # create the desired subtype based on the :type param, defined in the view link_to
    @post = Object.const_get(params[:type]).new
  end
  
  def create
    # create the desired subtype based on the hidden field :type in the form
    @post = Object.const_get(params[:post][:type]).new(params[:post])
    if @post.save
      flash[:notice] = "Successfully created post."
      redirect_to @post
    else
      render :action => 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end

end
