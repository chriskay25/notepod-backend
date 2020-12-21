class Episode < ApplicationRecord
    belongs_to :podcast, foreign_key: "podcast_id"
end
