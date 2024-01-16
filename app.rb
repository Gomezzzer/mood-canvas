require 'sinatra'

get '/' do
  erb :home
end



get '/random_photo' do
  user_input = params[:user_input]
  api_key = 'ART_API_KEY'
  url = URI.parse("https://source.unsplash.com/random?api_key=#{api_key}")
  @random_photo_url = "https://source.unsplash.com/random?/#{user_input}" 
  
  
  erb :random_photo
end
 
