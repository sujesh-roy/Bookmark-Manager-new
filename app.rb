require 'sinatra/base'
class Bookmarks < Sinatra::Base

get '/' do
  "Hello world"
  erb :index
end

get '/bookmarks' do
  erb :bookmarks
end

end
