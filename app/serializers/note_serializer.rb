class NoteSerializer
  include JSONAPI::Serializer
  belongs_to :user
  attributes :content, :podcast_id, :episode_id, :episode_timestamp
end
