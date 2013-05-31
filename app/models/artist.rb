class Artist
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  has_mongoid_attached_file :photo

  belongs_to :user
  has_many :concerts

  field :name, type: String
end
