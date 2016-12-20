require 'pry'
require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require_relative './models/user'

enable :sessions

helpers do
  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
  erb :index
end

get '/session/new' do
  erb :session_new
end

post '/session' do
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect to '/'
  else
    erb :sessions_new
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to '/session/new'
end
