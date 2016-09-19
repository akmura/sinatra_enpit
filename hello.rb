require 'sinatra'

get '/' do
erb :index
end

get '/:name' do |n|
erb :#{n}
end
