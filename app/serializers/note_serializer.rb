class NoteSerializer
  include JSONAPI::Serializer
  set_key_transform :camel_lower
  belongs_to :user
  attributes :content, :podcast_api_id, :episode_api_id, :episode_timestamp
end
