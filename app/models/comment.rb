class Comment < ApplicationRecord
    belongs_to :gossip
    has_many :commentofcomments
end
