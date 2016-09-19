require 'sinatra'

get '/' do
erb :index
end

get '/hello' do
"hello"
end
