require_relative './config/init.rb'
set :run, true

get '/' do
  @name = "Bob Smith"
  erb :"home"
end

get '/date' do
  @date = Date.today
  erb :"date"
end