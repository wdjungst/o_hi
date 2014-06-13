require 'sinatra/partial'
class OHi < Sinatra::Base
  get '/' do
    #TODO this is only for developing without login
    session[:logged_in] = true
    @logged_in = session[:logged_in]
    haml :index
  end

  get '/login' do
    #TODO this is only for developing without login
    session[:logged_in] = false
    @logged_in = session[:logged_in]
    haml :login
  end

  get '/dashboard' do
    haml :nav
    #output << partial( :header )
    #output << partial( :nav)
    #output << partial( :dashboard)
  end

  get '/add_task' do
    haml :add_task
  end
end
