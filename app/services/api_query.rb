require 'podcast_api'

class ApiQuery < ApplicationService
    attr_reader :type, :page_number, :genre_id, :podcast_id

    def initialize(type: '', page_number: 1, genre_id: '', podcast_id: '')
        @type = type
        @page_number = page_number
        @genre_id = genre_id
        @podcast_id = podcast_id
    end

    def call()
        # binding.pry
        # client = PodcastApi::Client.new(api_key: ENV['LISTEN_API_KEY'])
        client = PodcastApi::Client.new(api_key: nil) # nil key returns fake info
        case @type
        when 'popular'
            response = client.fetch_best_podcasts(genre_id: @genre_id, page: @page_number)
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