class Api::V1::SearchesController < ApplicationController

  def index
    search_results = ApiQuery.call(params[:type])
    render json: search_results, status: 200
  end

  private

  def search_params
    params.require(:search).permit(:type, :offset, :genre_ids)
  end

end