class ConcertsController < ApplicationController

  before_filter :authenticate_user!, except: %w(index)

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.create params[:concert]
    respond_with @concert, location: concerts_path   
  end
end
