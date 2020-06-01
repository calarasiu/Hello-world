class UpvotesController < ApplicationController
  before_action :find_post

  def create 
    @upvote = Upvote.create(user_id: current_user.id, post_id: @post.id)
    @upvote.save 
    redirect_to group_path(@post.group.id, anchor: "upvote-#{@post.id}")
  end 

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

end
