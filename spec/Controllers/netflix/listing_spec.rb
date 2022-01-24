require 'rails_helper'

RSpec.describe NetflixesController, type: :controller do

  describe "request listing" do

    it 'return a listing of resources' do
      get :listing

      expect(response).to have_http_status(200)
    end
  end
end

