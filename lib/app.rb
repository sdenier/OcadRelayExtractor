require 'thor'
require_relative './services/ocad_xml'

class App < Thor
  desc 'ocad', 'Extracts relay teams from OCAD XML'
  def ocad(filename)
    if File.exist?(filename)
      teams = OcadXml.new.extract(filename)
      puts teams
    else
      puts "Error: could not find '#{filename}'"
      exit -1
    end
  end

end
