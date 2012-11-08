class TextFileFormatter

  def output(filename, teams)
    outputFile = outputName(filename)
    File.open(outputFile, 'w') do |f|
      teams.each {|team| teamOutput(team, f) }
    end
    outputFile
  end

  def outputName(filename)
    File.basename(filename, '.xml') + '.txt'
  end

  def teamOutput(team, file)
    team.legs.each do |leg|
      file.write legDescription(team, leg)
    end
  end

  def legDescription(team, leg)
    "#{team.bibNumber}.#{leg.legNo}: #{leg.courseVariation}\n"
  end

end
