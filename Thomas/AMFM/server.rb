require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'
require 'sinatra/activerecord'
require_relative 'models/festival'
require_relative 'models/user'
require 'pg'

#Festivals/Events
get '/festivals' do
  @festivals =  Festival.all
  erb :festivals
end

post '/festivals' do
  @festival = Festival.new(@params)
  if @festival.save
    erb :festival
  else
    erb :festival_errors
  end
end

get '/festival/:id' do
  begin
    @festival = Festival.find(@params['id'])
    erb :festival
  rescue
    "There was no festival with the id #{@params['id']}"
  end
end

#Renders the edit form
get "/festival/edit/:id" do
  begin
    @festival = Festival.find(@params['id'])
    erb :edit_festival
  rescue
    "There was no festival with the id #{@params['id']}"
  end
end

# Processes the edit form
post '/festival/edit/:id' do
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
end

#destory festivals!
post '/festival/delete/:id' do
  begin
    @festival = Festival.find(@params['id'])
    @festival.destroy
    redirect to('/festivals')
  rescue
    "There was no festival with the id #{@params['id']}"
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
    erb :user
  else
    erb :user_errors
  end
end

get '/user/:id' do
  begin
    @user = User.find(@params['id'])
    erb :user
  rescue
    "There was no user with the id #{@params['id']}"
  end
end

#Renders the edit form
get "/user/edit/:id" do
  begin
    @user = User.find(@params['id'])
    erb :edit_user
  rescue
    "There was no user with the id #{@params['id']}"
  end
end

# Processes the edit form
post '/user/edit/:id' do
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
    if @user.save
      erb :user
    else
      "You didn't provide all the required fields"
    end
  rescue
    "There was no user with the id #{@params['id']}"
  end
end

#destory!
post '/user/delete/:id' do
  begin
    @user = User.find(@params['id'])
    @user.destroy
    redirect to('/users')
  rescue
    "There was no user with the id #{@params['id']}"
  end
end

not_found do
  "Error"
end
