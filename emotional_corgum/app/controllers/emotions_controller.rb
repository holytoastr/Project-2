class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
  end
end
