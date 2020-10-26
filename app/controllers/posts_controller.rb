class PostsController < ApplicationController
    def create
        @post = Post.create(content: params[:content], posteable_type: params[:class], posteable_id: params[:id]) 

        params[:class] == 'User' ? (redirect_to user_path(params[:id])) : (redirect_to tree_path(params[:id]))
    end
end

