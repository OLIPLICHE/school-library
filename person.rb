# rubocop: disable Style/OptionalBooleanParameter
require './corrector'
class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || parent_permission == true
  end

  def validate_name
    validate = @corrector
    @name = validate.correct_name(@name)
  end

  def add_rental(rental)
    @rentals << rental
    rental.book = self
  end
end
# rubocop: enable Style/OptionalBooleanParameter
