require 'sinatra'
enable :sessions

get '/' do
erb :index
end

get '/hello' do
erb :hello
end

get '/user/' do
if(session['name'] != nil)
@name = session['name']
end
erb :user
end

get '/user/:name' do |n|
@name = n
session['name']=@name
erb :user
end

not_found do
'ページが存在しません'
end


