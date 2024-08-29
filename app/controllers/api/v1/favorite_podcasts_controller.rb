class Api::V1::FavoritePodcastsController < ApplicationController
  def index
    # binding.pry
    faves = current_user.favorite_podcasts 
    # render json: FavoritePodcastSerializer.new(faves).serializable_hash.to_json, status: :ok
    render json: faves
  end
  
  def create
    fav = current_user.favorite_podcasts.build(favorite_podcast_params)
    if fav.save
      render json: FavoritePodcastSerializer.new(fav).serializable_hash.to_json, status: :created
    else
      render json: {errors: fav.errors}, status: :unprocessable_entity
    end
  end

  private

  def favorite_podcast_params
    params.require(:favorite_podcast).permit(:user_id, :podcast_api_id)
  end

end