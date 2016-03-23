class CorgisController < ApplicationController
  def show
    @corgi = Corgi.find(params[:id])
  end

  def new
    @emotion = Emotion.find(params[:emotion_id])
    @corgi = Corgi.new
  end

  def create
    @emotion = Emotion.find(params[:emotion_id])
    @corgi = @emotion.corgis.create!(corgi_params.merge(user:current_user))
    redirect_to corgi_path(@corgi)
  end

  def destroy
    @corgi = Corgi.find(params[:id])
    if @corgi.user == current_user
      @corgi.destroy
    else
      flash[:alert] = "You are not permitted to delete this item"
    end
    redirect_to :back
  end

  private
  def corgi_params
    params.require(:corgi).permit(:img_url, :quote)
  end
end
