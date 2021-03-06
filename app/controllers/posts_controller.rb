class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def new
      @post = Post.new
    end

    def show
      @post = Post.find_by(id: params[:id])
    end

    def edit
      @post = Post.find_by(id: params[:id])
    end

    def create
      @post = Post.new(post_params)
      @post.save
      redirect_to root_path
    end

private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
