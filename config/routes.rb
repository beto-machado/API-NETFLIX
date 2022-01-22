Rails.application.routes.draw do

  get '/netflixes', to: 'netflixes#listing'
  
end
