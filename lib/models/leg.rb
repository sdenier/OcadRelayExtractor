class Leg

  attr_accessor :legNo, :courseVariation

  def initialize(attributes={})
    attributes.each { |k, v| send("#{k}=", v) }
  end

  def to_s
    "#{legNo}: #{courseVariation}"
  end

end
