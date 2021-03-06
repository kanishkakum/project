class PostsController < ApplicationController

  def index
    @posts = Post.all

  end

  

  def new
    @post = Post.new

  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to @post , message: "Post was created successfully"
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params)
      redirect_to @post
    else
      render 'edit'  
    end  
  end

  def show 
    @post = Post.find(params[:id])
  end  

  def edit
    @post = Post.find(params[:id])
  end

  def destroy

  end

  private

  def posts_params
  	params.require(:post).permit(:title, :content)
  end	

end
