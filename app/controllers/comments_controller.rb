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

  def edit
    @corgi = Corgi.find(params[:corgi_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @corgi = Corgi.find(params[:corgi_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(user: current_user))
    redirect_to corgi_path(@corgi)
  end

  def destroy
    @corgi = Corgi.find(params[:corgi_id])
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
    else
      flash[:alert] = "You are not permitted to delete this item"
    end
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :commenter)
  end
end
