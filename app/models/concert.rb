class Concert
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :venue
  belongs_to :artist
end
