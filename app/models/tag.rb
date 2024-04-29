class Tag < ApplicationRecord
    has_many :gossip_tag
    has_many :gossips, through: :gossip_tag
end
