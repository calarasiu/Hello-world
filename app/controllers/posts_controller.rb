class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @group.post = @post
    @group.user_id = current_user.id
    if @group.save
       redirect_to group_path(@group)
    else
      flash[:notice] = "You are not permitted to post here"
      render :new
    end
  end

private

  def post_params
    params.require(:post).permit(:content)
  end
end

