class BookmarksController < ApplicationController
  def create 
    @post = Post.find(params[:post_id])
    @user = current_user
    @bookmark = Bookmark.new(post: @post, user: @user)
      if @bookmark.save
        redirect_to group_path(@post.group, anchor: "upvote-#{@post.id}")
      else 
        flash[:alert] = "Your post was not saved" 
        redirect_to group_path(@post.group)
      end
  end 

  def index 
    @bookmarks = current_user.bookmarks
  end 


end
