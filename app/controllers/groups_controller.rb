class GroupsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
 def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
    @posts = Post.all
    @bookmark = Bookmark.new
  end
end

