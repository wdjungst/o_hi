class OHi < Sinatra::Application
  get '/' do
    #TODO this is only for developing without login
    session[:logged_in] = false
    @logged_in = session[:logged_in]
    haml :index
  end
end