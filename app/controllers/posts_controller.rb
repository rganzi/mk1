class PostsController < ApplicationController

	before_action :require_user, only: [:index, :show]
	
	def index
  		@new_post = Post.new
 	 	@all_posts = Post.order(created_at: :desc).all
	end

	def create 
    	@new_post = Post.new(post_params)
    	@new_post.author = current_user.username
    	if @new_post.save 
    		redirect_to '#root_path' 
  		else 
    		render 'new' 
  		end 
	end
  
  private
  	def post_params
    	params.require(:post).permit(:comment)
  	end
  	
end
