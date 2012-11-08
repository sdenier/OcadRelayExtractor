class TextFileFormatter

  def output(filename, teams)
    File.open(outputName(filename), 'w') do |f|
      teams.each {|team| teamOutput(team, f) }
    end
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
