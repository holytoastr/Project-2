class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
  end

  def show
    # NHO: one thing I was thinking about for a "added bonus" feature, would be to integrate the giphy api
    # so a user can click a button and find giphys relating to different corgi emotions.
    # Of course it would be hard to moderate content
    @emotion = Emotion.find(params[:id])
    @emotions = Emotion.all
    # NHO: looks like you already have access to @emotions thanks to your before action in application controller
  end
end
