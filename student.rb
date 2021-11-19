# rubocop: disable Style/OptionalBooleanParameter
require './person'
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
# rubocop: enable Style/OptionalBooleanParameter
