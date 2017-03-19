class PostsController < ApplicationController
    # C for CRUD
    def new
        @posts = Post.new
    end
    def create
        @posts = Post.create(post_params)
        if @posts.save
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
        #@posts = Post.all
        #@posts = Post.find_by_id(params[:id])
        @posts = Post.find_by_id(params[:id])
        if @posts == nil
          redirect_to 'index'
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :poster)
    end
end
