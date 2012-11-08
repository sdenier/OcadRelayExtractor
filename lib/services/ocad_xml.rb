require 'xmlsimple'
require_relative '../models/team'

class OcadXml

  def extract(filename)
    teams = XmlSimple.xml_in(filename)['TeamCombination']
    teams.nil? ? [] : extractTeams(teams)
  end

  def extractTeams(teams)
    teams.map do |teamHash|
      Team.new( :bibNumber => teamHash['StartNo'].first.strip,
                :courseId => teamHash['CourseId'].first.strip)
    end
  end

end
