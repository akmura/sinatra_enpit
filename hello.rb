require 'sinatra'

get '/' do
erb :index
end

get '/hello' do
erb :hello
end

get '/user/:name' do |n|
@name = n
erb :user
end

not_found do
'ページが存在しません'
end


