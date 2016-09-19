require 'sinatra'

get '/' do
erb :index
end

get '/hello' do
erb :hello
end

not_found do
'ページが存在しません'
end


