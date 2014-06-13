require 'sinatra/base'
require 'sinatra/app_helpers'
require 'sinatra/partial'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'active_record'
require 'pg'
require 'yaml'
require 'haml'
require 'rack/contrib'
require 'active_support'

#find out why some things say to use Sinatra::Base and some things say to use
#Sinatra::Application (that's what dave had it set as)
class OHi < Sinatra::Base
  configure do
    register Sinatra::Partial
    set :partial_template_engine, :haml
  end
  require_relative 'app/routes/init'
  require_relative 'lib/app_helpers'

  register Sinatra::Partial
  register Sinatra::ActiveRecordExtension
#  register AppHelper
  helpers Sinatra::AppHelpers
  enable :sessions
  set :public_folder, 'public', File.dirname(__FILE__)
  set :root, 'app', File.dirname(__FILE__)
  set :js_path, 'public/javascripts'
  set :js_url, '/javascripts'
  set :database, "sqlite3:///o_hi.db"
end
