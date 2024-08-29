class FavoritePodcastSerializer
  include JSONAPI::Serializer
  belongs_to :user
  attributes :podcast_api_id
end
