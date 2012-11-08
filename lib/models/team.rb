class Team

  attr_accessor :bibNumber, :courseId

  attr_reader :legs

  def initialize(attributes={})
    attributes.each { |k, v| send("#{k}=", v) }
    @legs = []
  end

  def nbLegs
    @legs.size
  end

  def to_s
    "Team #{@bibNumber} on course #{@courseId}: #{nbLegs} legs"
  end

end
