require 'xmlsimple'

class OcadXml

  def extract(filename)
    teams = XmlSimple.xml_in(filename)['TeamCombination']
    teams.nil? ? [] : extractTeams(teams)
  end

  def extractTeams(teamHash)
    puts teamHash
  end

end
