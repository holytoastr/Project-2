class CorgisController < ApplicationController
  def show
    @corgi = Corgi.find(params[:id])
  end

  def new
    @emotion = Emotion.find(params[:format])
    @corgi = Corgi.new
  end

  def create
    @emotion = Emotion.find(params[:format])
    @corgi = Corgi.create!(corgi_params)
    redirect_to corgi_path(@corgi)
  end

  private
  def corgi_params
    params.require(:corgi).permit(:img_url, :quote, :emotion_id)
  end
end
