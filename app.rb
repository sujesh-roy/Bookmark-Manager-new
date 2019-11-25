require 'sinatra/base'
class Bookmarks < Sinatra::Base

get '/' do
  "Hello world"
  erb :index
end

end
