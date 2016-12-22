require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'
require 'sinatra/activerecord'
require_relative 'models/festival'
require_relative 'models/user'
require 'pg'

enable :sessions

#is the user logged in?
helpers do
  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end

#homepage
get '/' do
  erb :homepage
end

#Festivals/Events
get '/festivals' do
  if logged_in?
    @festivals =  Festival.all
    erb :festivals
  else
    redirect to '/session/new'
  end
end

post '/festivals' do
  if logged_in?
    @festival = Festival.new(@params)
    if @festival.save
      erb :festival
    else
      erb :festival_errors
    end
  else
    redirect to '/session/new'
  end
end

get '/festival/:id' do
  if logged_in?
    begin
      @festival = Festival.find(@params['id'])
      erb :festival
    rescue
      "There was no festival with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

#Renders the edit form
get "/festival/:id/edit" do
  if logged_in?
    begin
      @festival = Festival.find(@params['id'])
      erb :edit_festival
    rescue
      "There was no festival with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

# Processes the edit form
post '/festival/:id/edit' do
  if logged_in?
    begin
      @festival = Festival.find(@params['id'])
      @festival.name = @params['name']
      @festival.location = @params['location']
      @festival.date = @params['date']
      @festival.cost = @params['cost']
      @festival.image_url = @params['image_url']
      if @festival.save
        erb :festival
      else
        "You didn't provide all the required fields"
      end
    rescue
      "There was no festival with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

#festival list
get '/festival_list' do
  if logged_in?
    @festivals =  Festival.all
    erb :festival_list
  else
    redirect to '/session/new'
  end
end

#destory festivals!
delete '/festival/:id' do
  if logged_in?
    begin
      @festival = Festival.find(@params['id'])
      @festival.destroy
      redirect to('/festivals')
    rescue
      "There was no festival with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

#Users
get '/users' do
  @users =  User.all
  erb :users
end

post '/users' do
  @user = User.new(@params)
  if @user.save
    session[:user_id] = @user.id
    erb :user
  else
    erb :user_errors
  end
end

get '/user/:id' do
  if logged_in?
    begin
      @user = User.find(@params['id'])
      erb :user
    rescue
      "There was no user with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

#Renders the edit form
  get "/user/:id/edit" do
    if logged_in?
      begin
        @user = User.find(@params['id'])
        @festivals = Festival.all
        erb :edit_user
      rescue
        "There was no user with the id #{@params['id']}"
      end
    else
      redirect to '/session/new'
    end
  end

# Processes the edit form
post '/user/:id/edit' do
  if logged_in?
    begin
      @user = User.find(@params['id'])
      @user.username = @params['username']
      @user.first_name = @params['first_name']
      @user.last_name = @params['last_name']
      @user.email = @params['email']
      @user.bio = @params['bio']
      @user.phone = @params['phone']
      @user.age = @params['age']
      @user.profile_image = @params['profile_image']
      @user.festival_ids = @params['festivals']
      if @user.save
        erb :user
      else
        "You didn't provide all the required fields"
      end
    rescue
      "There was no user with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

#user list
get '/user_list' do
  if logged_in?
    @users =  User.all
    erb :user_list
  else
    redirect to '/session/new'
  end
end

#destroy!
delete '/user/:id' do
  if logged_in?
    begin
      @user = User.find(@params['id'])
      @user.destroy
      redirect to('/users')
    rescue
      "There was no user with the id #{@params['id']}"
    end
  else
    redirect to '/session/new'
  end
end

#about
get '/about' do
  erb :about
end

#List of users who have gone to festival
get '/attended_festival/:id' do
  if logged_in?
    @festival =  Festival.find(@params['id'])
    @users =  User.all
    erb :attended_festival
  else
    redirect to '/session/new'
  end
end

# List of festivals user has gone to
get '/festival_attendance/:id' do
  if logged_in?
    @user = User.find(@params['id'])
    @festivals = Festival.all
    erb :festival_attendance
  else
    redirect to '/session/new'
  end
end

#username session authentication
get '/session/new' do
  erb :session_new
end

#username session creation
post '/session' do
  user = User.find_by(username: params[:username])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect to '/'
  else
    @error_message = 'Sorry, your email/password combo was incorrect.'
    erb :session_new
  end
end

#set session to nil to clear login info
delete '/session' do
  session[:user_id] = nil
  redirect to '/session/new'
end

not_found do
  "Error"
end
