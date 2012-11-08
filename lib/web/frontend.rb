require 'sinatra'
require 'haml'
require_relative '../app'

class FrontEnd < Sinatra::Base
  enable :sessions

  get '/' do
    haml :upload_form
  end

  post '/upload' do
    if params['xmlfile']
      session[:filename] = params['xmlfile'][:filename]
      session[:tempfile] = params['xmlfile'][:tempfile].path
      haml :extract_page
    else
      haml :error
    end
  end

  get '/extract' do
    extract_file(session[:filename], session[:tempfile])
  end

private

  def extract_file(filename, tempfile)
    begin
      outfile = TextFileFormatter.new.output(filename, OcadXml.new.extract(tempfile))
      send_file File.new(outfile), :filename => outfile
    rescue Exception
      haml :error
    end
  end

end
