get '/login' do
session['name']=nil
erb :login
end

post '/login' do
@name = params['name']
session['name']=@name
redirect to ('/user')
end

get '/user' do
if(session['name'] == nil)
# セッション情報がない場合はログインページにリダイレクト
redirect to ('/login')
end
@name = session['name']
erb :user
end

#get '/user/:name' do |n|
#@name = n
#session['name']=@name
#erb :user
#end




