class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    params.inspect
    redirect_to post_path(commnt.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
