require './student'
class Classroom
  attr_accessor :label

  def initialize(label)
    @id = Random.rand(1..1000)
    @label = label
    @student = []
  end
end
