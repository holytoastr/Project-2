class CommentsController < ApplicationController
  # NHO: not something we covered, but you can use before_action's on a controller to run a method for any action
  # A good use case may be to make a method that abstracts where you find a Corgi for each action
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
    if @comment.user != current_user
      flash[:alert] = "You are not permitted to edit this item"
      redirect_to :back
    end

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
