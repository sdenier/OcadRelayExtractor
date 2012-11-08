require 'thor'
# require_relative './collections/employees'

class App < Thor
  desc 'ocad', 'Extracts relay teams from OCAD XML'
  def ocad(filename)
    puts File.exist?(filename)
  end

end
