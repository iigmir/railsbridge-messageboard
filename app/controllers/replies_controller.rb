class RepliesController < ApplicationController
    # C for CRUD
    def new
        @rep = Reply.new
        @post = Post.find_by_id(params[:id])
    end
    def create
        @r = Reply.create(rep_params)
        if @r.save
           redirect_to posts_url
        else
           render 'new'
        end
    end
    
    private
    def rep_params
        params.require(:replies).permit(:post_id, :response, :author)
    end
end
