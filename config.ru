require File.expand_path(File.dirname(__FILE__) + '/o_hi')
require 'rack/contrib'

use Rack::Deflater
use Rack::StaticCache, urls: ['/images'], root: Dir.pwd + '/public'
use ActiveRecord::ConnectionAdapters::ConnectionManagement
run OHi.new
