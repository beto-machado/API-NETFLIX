# frozen_string_literal: true

class NetflixesController < ApplicationController

  def listing
    if search.present?
      @netflix_search = Netflix.search(search)
      @netflixes = @netflix_search.sorted.page(params[:page])
    else
      @netflixes = Netflix.sorted.page(params[:page])
    end
    render json: @netflixes
  end

  private

  def search
    params[:search]
  end

end
