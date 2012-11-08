require 'sinatra'
require 'haml'
require_relative '../app'

class FrontEnd < Sinatra::Base

  get '/' do
    haml :upload_form
  end

end
