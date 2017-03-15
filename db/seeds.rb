require 'json'
Course.delete_all
Subject.delete_all
Instructor.delete_all

json_subjects = ActiveSupport::JSON.decode(File.read('db/subject.json'))
json_courses = ActiveSupport::JSON.decode(File.read('db/course.json'))
json_instructors = ActiveSupport::JSON.decode(File.read('db/instructor.json'))

json_subjects.each do |a|
	Subject.create!( :term => ['term'], :name => ['name'], :abbreviation => ['abbreviation'])
end

json_courses.each do |a|
	Course.create!( :term => a['term'], :subjects => a['subjects'], :name => a['name'], :independent_study => a[':independent_study'], :requirements => a['requirements'])
end

json_instructors.each do |a|
	Instructor.create!(:last => a['last'], :comment => a['comment'], :email => a['email'])
end