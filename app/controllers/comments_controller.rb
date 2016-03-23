class CommentsController < ApplicationController
  def new
    @corgi = Corgi.find(params[:corgi_id])
    @comment = @corgi.comments.new
  end

  def create
    @corgi = Corgi.find(params[:corgi_id])
    @comment = @corgi.comments.create!(comment_params.merge(user: current_user))
    redirect_to corgi_path(@corgi)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :commenter)
  end
end
