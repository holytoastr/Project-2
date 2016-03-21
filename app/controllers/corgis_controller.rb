class CorgisController < ApplicationController
  def show
    @corgi = Corgi.find(params[:id])
  end
end
