require 'sinatra/base'
require './controllers/ApplicationController'
require './controllers/TypeController'



map('/') {run ApplicationController}
map('/type') {run TypeController}