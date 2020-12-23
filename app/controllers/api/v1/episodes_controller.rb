class Api::V1::EpisodesController < ApplicationController

    def index
        episodes = Episode.all
        render json: episodes
    end

    private

    def episode_params
      params.require(:episode).permit(:title, :podcast_id)
    end  

end