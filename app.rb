require 'sinatra/base'
require './lib/bookmarks'
class BookmarkManager < Sinatra::Base

get '/' do
  "Welcome to Bookmark Manager"
  erb :index
end

get '/bookmarks' do
  p ENV

 @bookmarklist = Bookmarks.all
 #@bookmarklist.all
  erb :bookmarks
end

get '/new' do
  erb :new
end

post '/new' do
  Bookmarks.create(url: params['url'])
  redirect '/bookmarks'
end

  run! if app_file == $0
end
