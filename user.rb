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
