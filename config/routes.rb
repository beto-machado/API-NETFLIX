Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get '/netflixes', to: 'netflixes#listing'
    end
  end
end
