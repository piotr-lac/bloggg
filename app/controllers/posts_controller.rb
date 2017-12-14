class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index
  	@posts = Post.all
  end

  def edit
  end

  def show
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to post_path(@post)
  	else
  		render 'new'
  	end
  end

private
	
	def post_params
		params.require(:post).permit(:title, :content)
	end

end
