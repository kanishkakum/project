class PostsController < ApplicationController

  def index

  end

  

  def new
    @post = Post.new

  end

  def create
    @post = Post.new(posts_params)
    if post.save
      redirect_to @post , message: "Post was created successfully"
    else
      render 'new'
    end
  end

  def update

  end

  def edit

  end

  def destroy

  end

  private

  def posts_params
  	params.require(:posts).permit(:title, :content)
  end	

end
