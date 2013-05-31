class Api::ConcertsController < Api::ApiController
  def index
    @concerts = Concert.all
  end
end
