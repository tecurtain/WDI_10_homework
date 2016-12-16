require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

def run_sql(sql)
  db = PG.connect(dbname: 'memetube')
  results = db.exec(sql)
  db.close
  return results
end

get '/' do
  @videos = run_sql("SELECT * FROM videos ORDER BY name;")
  erb :index
end

get '/videos/new' do
  erb :videos_new
end

#insert videos into database
post '/videos' do
  run_sql("INSERT INTO videos (name, video) VALUES ('#{ params[:title] }', '#{ params[:embed_code] }');")
  redirect to '/'
end

#select individual videos
get '/videos/:id' do
  @video = run_sql("SELECT * FROM videos WHERE id = #{params[:id]}")[0]
  erb :videos_show
end

#create the edit form
get '/videos/:id/edit' do
    @video = run_sql("SELECT * FROM videos WHERE id = #{params[:id]}")[0]
    erb :videos_edit
end

#save information into database
post '/videos/:id' do
    run_sql("UPDATE videos SET name = '#{params[:title]}', video = '#{params[:embed_code]}' WHERE id = #{params[:id]};")
    redirect to "/videos/#{params[:id]}"
end

#delete videos
post '/videos/:id/delete' do
  run_sql("DELETE FROM videos WHERE id = #{params[:id]};")
  redirect to "/"
end
