class Guide
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :way_name, type: String
  field :way_desc, type: String

  has_one :user
  has_many :concert_steps, class_name: "Concert"
end
