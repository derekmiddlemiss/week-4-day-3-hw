require_relative('./models/student')
require_relative('./models/house')
require'pry'

student1 = Student.find(1)
house = student1.find_house
binding.pry
nil