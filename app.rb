require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
  "Hello World"
end

get '/secret' do
  "Hey Felix, this is a secret!!"
end

get '/random-cat' do 
  @name = ["Amigo","Misty","Almond"].sample
  erb(:index)
end

get '/named-cat' do 
  p params[:name]
  @name = params[:name]
  erb(:index)
end


