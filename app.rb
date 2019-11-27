require 'sinatra/base'
require './lib/bookmarks'
class BookmarkManager < Sinatra::Base

get '/' do
  "Hello world"
  erb :index
end

get '/bookmarks' do
  p ENV
  
 @bookmarklist = Bookmarks.new
 @bookmarklist.all
  erb :bookmarks
end

  run! if app_file == $0
end
