class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
       redirect_to group_path(@post.group)
    else
      flash[:notice] = "comment column cannot be left blank"
      # render 'groups/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to group_path(@comment.post.group)
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end

end

