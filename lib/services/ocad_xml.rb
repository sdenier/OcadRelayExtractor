require 'xmlsimple'
require_relative '../models/team'
require_relative '../models/leg'

class OcadXml

  def extract(filename)
    teams = XmlSimple.xml_in(filename)['TeamCombination']
    teams.nil? ? [] : extractTeams(teams)
  end

  def extractTeams(teams)
    teams.map do |teamHash|
      team = Team.new( :bibNumber => teamHash['StartNo'].first.strip,
                       :courseId => teamHash['CourseId'].first.strip)
      extractTeamLegs(team, teamHash['Leg'])
      team
    end
  end

  def extractTeamLegs(team, legs)
    legs.each do |legHash|
      team << Leg.new
    end
  end

end
