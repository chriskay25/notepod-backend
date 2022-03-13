require 'podcast_api'

class ApiQuery < ApplicationService
    attr_reader :type, :offset, :genre_id, :podcast_id

    def initialize(type: '', offset: 0, genre_id: '', podcast_id: '')
        @type = type
        @offset = offset
        @genre_id = genre_id
        @podcast_id = podcast_id
    end

    def call()
        # client = PodcastApi::Client.new(api_key: ENV['LISTEN_API_KEY'])
        client = PodcastApi::Client.new(api_key: nil) # nil key returns fake info
        case @type
        when 'popular'
            response = client.fetch_best_podcasts(genre_id: @genre_id)
        when 'genres'
            # top_level_only limits the genres to the most popular
            response = client.fetch_podcast_genres(top_level_only: 1)
        when 'curated'
            response = client.fetch_curated_podcasts_lists()
        when 'podcast'
            response = client.fetch_podcast_by_id(id: @podcast_id)
        end
        response.body
    end

end