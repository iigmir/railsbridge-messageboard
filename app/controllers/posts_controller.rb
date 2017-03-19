class PostsController < ApplicationController
    # C for CRUD
    def new
        @post = Post.new
    end
    def create
        @post = Post.create(post_params)
        if @post.save
           redirect_to posts_url
        else
           render 'new'
        end
    end

    # R for CRUD
    def index
        @posts = Post.all
    end
    def show
        @post  = Post.find_by_id(params[:id])
        if @post == nil
          redirect_to posts_path
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :poster)
    end
end
