require('pry')
require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/student')


# results = Student.find_all
# binding.pry
# nil

get '/students' do 
  @students = Student.find_all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  student = Student.new(params)
  student.save()
  redirect to '/students'
end