class Concert
  include Mongoid::Document
  include Mongoid::Timestamps

  field :artist_name, type: String
  field :genre, type: String
  field :time_start, type: Time
  field :time_end, type: Time
  field :is_official, type: Boolean
  field :description, type: String
  field :venue, type: String

  field :coordinates, type: Array

  index({ coordinates: "2d" }, { min: -200, max: 200 })

  belongs_to :user
end
