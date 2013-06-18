class Api::GuidesController < Api::ApiController
  def index
    @guides = Guide.all
  end

  def show
    @guide = Guide.find params[:id]
  end

  def create
    @guide = Guide.new params[:guide]
    ids = Array.new
    binding.pry
    params[:guide]["concert_steps"].each do |c|
      concert = Concert.create c
      ids << concert
    end
    @guide.concert_steps = ids

    if @guide.save
      render 'api/guides/show', status: :created
    else
      render text: {errors: @guide.errors}.to_json, status: :unprocessable_entity
    end
  end
end
