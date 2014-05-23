require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'active_record'
require 'pg'
require 'yaml'
require 'haml'
require 'rack/contrib'
require 'active_support'

class OHi < Sinatra::Application
  register Sinatra::ActiveRecordExtension

  enable :sessions
  set :public_folder, 'public', File.dirname(__FILE__)
  set :root, 'app', File.dirname(__FILE__)
  set :js_path, 'public/javascripts'
  set :js_url, '/javascripts'

  require_relative 'app/routes/init'
end
