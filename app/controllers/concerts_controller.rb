class ConcertsController < ApplicationController

  before_filter :authenticate_user!, except: %w(index)

  def index
  end

  def new
  end

  def create
  end
end
