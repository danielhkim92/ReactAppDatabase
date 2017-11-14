require 'sinatra/base'
require './controllers/ApplicationController'
require './models/Types'



map('/') {run ApplicationController}