class GroupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] 
 def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
    @bookmark = Bookmark.new
    if params[:search].present?
      @posts = @group.posts.global_search("#{params[:search][:query]}") 
    else 
      @posts = @group.posts
    end
  end
end

