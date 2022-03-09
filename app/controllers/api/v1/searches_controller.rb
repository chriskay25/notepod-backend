class Api::V1::SearchesController < ApplicationController

  def index
    search_results = ApiQuery.call(type: params[:type], genre_id: params[:genre_id])
    render json: search_results, status: 200
  end

  private

  def search_params
    params.require(:search).permit(:type, :offset, :genre_id)
  end

end