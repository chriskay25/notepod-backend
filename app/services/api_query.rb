require 'podcast_api'

class ApiQuery < ApplicationService
    attr_reader :type, :offset, :genre_ids

    def initialize(type='', offset=0, genre_ids='')
        @type = type
        @offset = offset
        @genre_ids = genre_ids
    end

    def call()
        client = PodcastApi::Client.new(api_key: nil) # nil key returns fake info
        case @type
        when 'popular'
            response = client.fetch_best_podcasts()
        when 'curated'
            response = client.fetch_curated_podcasts_lists()
        end
        response.body
    end

end