class Note < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :podcast_api_id, presence: true
  validates :episode_api_id, presence: true
end
