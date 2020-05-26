class GroupsController < ApplicationController
 # before_action :set_group, only: [:show]
 def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
    @posts = Post.all
  end

end

# private
# def set_group
#   @group = Group.find(params[:id])
# end
