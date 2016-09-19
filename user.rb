get '/login' do
session['name']=nil
erb :login
end

post '/login' do
@name = params['name']
redirect to ('/user/'+@name)
end

get '/user/' do
if(session['name'] != nil)
# セッション情報がある場合は当該ユーザページにリダイレクト
@name = session['name']
redirect to ('/user/'+@name)
end
erb :user
end

get '/user/:name' do |n|
@name = n
session['name']=@name
erb :user
end


