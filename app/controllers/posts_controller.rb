class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def index
    @posts = current_user.posts
  end

  def show
    @post = Post.find(params[:id])
    @group = Group.find(params[:group_id])
  end

  def create
    @post = Post.new(post_params)
    @group = Group.find(params[:group_id])
    @post.group = @group
    if @post.user = current_user #for now we are just checking if the user is loged in
      @post.save
      redirect_to group_path(@group, anchor: "post-#{@post.id}")
    else
      flash[:notice] = "You need to login before adding a post"
      # render "posts/new" we don't need to render because we are staying on the same page
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @group = @post.group
    @post.destroy
    redirect_to group_path(@group)
  end

private

  def post_params
    params.require(:post).permit(:content)
  end
end

