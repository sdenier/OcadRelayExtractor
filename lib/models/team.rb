class Team

  attr_accessor :bibNumber, :courseId

  attr_reader :legs

  def initialize(attributes={})
    attributes.each { |k, v| send("#{k}=", v) }
    @legs = []
  end

  def <<(leg)
    @legs << leg
  end

  def nbLegs
    @legs.size
  end

  def to_s
    "Team #{bibNumber} on course #{courseId}: #{nbLegs} legs #{ legs.map &:to_s }"
  end

end
