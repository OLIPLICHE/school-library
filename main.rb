require './person'
require './book'
require './classroom'
require './corrector'
require './rental'
require './student'
require './teacher'

class App
  attr_accessor :books, :persons, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
    @class = Classroom.new('Grade 7')
  end

  def run
    print 'Welcome to School Library App!'
    sleep 0.75
    menu
  end
end

def main
  app = App.new
  app.run
end

main
