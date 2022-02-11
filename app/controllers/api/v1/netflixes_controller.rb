# frozen_string_literal: true
module Api

  module V1

    class NetflixesController < ApplicationController

      def listing
        if search.present?
          @netflixes = Netflix.search(search).sorted.page(params[:page])
        else
          @netflixes = Netflix.sorted.page(params[:page])
        end

        paginate json: @netflixes, only: [:id, :title, :type, :release_year, :country, :date_added, :description]
      end

      private

      def search
        params[:search]
      end

    end

  end

end
