require 'sinatra'

get '/' do
  "the time where this server lives is #{Time.now}
    <br /><br />check out your <a href=\"/agent\">user_agent</a>"
end

get '/user' do
  "the user this application is running as is #{ENV['USER']}"
end

get '/agent' do
  "you're using #{request.user_agent}"
end
