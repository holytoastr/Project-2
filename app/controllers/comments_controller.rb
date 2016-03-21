class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(comment_params)
    redirect_to corgis_path(@comment.corgi_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :commenter)
  end
end
