class Api::V1::SearchesController < ApplicationController

  def index
    search_results = ApiQuery.call(type: params[:type], genre_id: params[:genre_id], podcast_id: params[:podcast_id])
    if search_results
      render json: search_results, status: 200
    else
      render json: {message: 'Something went wrong with the search'}, status: :error
    end
  end

  private

  def search_params
    params.require(:search).permit(:type, :offset, :genre_id, :podcast_id)
  end

end