class TextFileFormatter

  def output(filename, teams)
    puts File.basename(filename, '.xml')
    puts teams
  end

end
