require 'thor'
require_relative './services/ocad_xml'
require_relative './services/text_file_formatter'

class App < Thor
  desc 'ocad', 'Extracts relay teams from OCAD XML'
  def ocad(filename)
    if File.exist?(filename)
      TextFileFormatter.new.output(filename, OcadXml.new.extract(filename))
    else
      puts "Error: could not find '#{filename}'"
      exit -1
    end
  end

end
