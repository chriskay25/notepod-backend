class NoteSerializer
  include JSONAPI::Serializer
  set_key_transform :camel_lower
  belongs_to :user
  attributes :content, :podcast_id, :episode_id, :episode_timestamp
end
