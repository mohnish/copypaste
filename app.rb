require 'json'
require 'haml'
require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?

get '/' do
  status 200
  haml :index
end

post '/' do
  'created'
end

get '/:note_id' do
  # Lookup Note using ID
  params[:note_id]
end
