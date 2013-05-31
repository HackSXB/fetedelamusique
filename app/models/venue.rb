class Venue
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :concerts
end
