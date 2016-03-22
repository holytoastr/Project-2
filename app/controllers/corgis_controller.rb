class CorgisController < ApplicationController
  def show
    @corgi = Corgi.find(params[:id])
  end

  def new
  end
end
