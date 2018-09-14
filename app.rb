require_relative './config/init.rb'

get '/' do
  erb :"home"
end

get '/date' do
  @date = Date.today
  erb :"date"
end

get '/sign_in' do
  erb :"sign_in"
end

post '/sign_in' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    sign_in(@user)
    redirect "/"
  else
    erb :"sign_in"
  end
end

get '/sign_up' do
	erb :"sign_up"
end

post '/sign_up' do

  @user = User.new(params[:user])
  
  if @user.save
    sign_in(@user)
    redirect "/"
  else
    erb :"sign_up"
  end
end