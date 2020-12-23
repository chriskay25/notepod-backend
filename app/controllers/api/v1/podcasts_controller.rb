class Api::V1::PodcastsController < ApplicationController

    def index
        podcasts = Podcast.all
        render json: podcasts
    end

    private

    def podcast_params
      params.require(:podcast).permit(:name)
    end   

end