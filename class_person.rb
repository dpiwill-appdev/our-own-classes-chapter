# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
end

# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  new_person.full_name
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  other_person.age
# Output:
#=>  45

require "date"

class Person
  attr_accessor :first_name, :last_name, :birthdate

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    birthdate_date = Date.parse(birthdate)
    now = Date.today
    now.year - birthdate_date.year - ((now.month > birthdate_date.month || (now.month == birthdate_date.month && now.day >= birthdate_date.day)) ? 0 : 1)
  end
end

p new_person = Person.new("Joe", "Mama")
puts new_person.full_name
