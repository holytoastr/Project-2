class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
  end

  def show
    @emotion = Emotion.find(params[:id])
    @emotions = Emotion.all
  end
end
