require 'sinatra'

require './item'
require './items_repository'

get '/' do
  erb :index
end

get '/items' do
  @user_input = params[:filter]
  erb :items_list
end


get '/items/new' do
  erb :new_items
end

post '/items' do
  new_item = params[:new_item]
  erb :new_items
end