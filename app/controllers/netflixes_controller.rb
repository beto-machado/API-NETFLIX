# frozen_string_literal: true

class NetflixesController < ApplicationController

  def listing
    if search.present?
      @netflixes = Netflix.search(search).sorted.page(params[:page])
    else
      @netflixes = Netflix.sorted.page(params[:page])
    end
    paginate json: @netflixes
  end

  private

  def search
    params[:search]
  end

end
