class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossip_tag
  has_many :tags, through: :gossip_tag
end
