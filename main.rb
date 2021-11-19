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

  def menu
    puts
    puts 'Please choose on option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    option = gets.chomp

    get_option option
  end

  def get_option(input)
    case input
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_a_book
    when '5'
      create_a_rental
    when '6'
      list_rentals_by_person_id
    when '7'
      puts 'Thank you for using this app!'
    else
      puts 'Please enter a number between 1 and 7'
    end
  end
end

def main
  app = App.new
  app.run
end

main
