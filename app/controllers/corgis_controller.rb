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

  private
  def corgi_params
    params.require(:corgi).permit(:img_url, :quote)
  end
end
