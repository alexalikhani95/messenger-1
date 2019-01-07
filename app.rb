ENV["RACK_ENV"] ||= 'development'

require './config/datamapper'
require 'rubygems'
require 'data_mapper'
require 'sinatra/base'
require './lib/message.rb'

class Messenger < Sinatra::Base

  set :sessions, true

  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/board' do
      Message.create(content: params[:message])
      redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    erb(:one_id)
  end

end
