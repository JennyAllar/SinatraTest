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