require 'json'
Course.delete_all
Subject.delete_all
Instructor.delete_all
User.delete_all
Enrollment.delete_all
CourseSubject.delete_all

subjects = ActiveSupport::JSON.decode(File.read('db/subject.json'))
courses = ActiveSupport::JSON.decode(File.read('db/course.json'))
instructors = ActiveSupport::JSON.decode(File.read('db/instructor.json'))


subjects.each do |subject|
  Subject.create!(:name => subject['name'], :indicator => subject['id'])
end

courses.each do |course|
	@course = Course.create!(:name => course['name'], :code => course['code'], :desc => course['description'])
	cSubject = course['subjects']
	cSubject.each do |subject|
		CourseSubject.create!(:course_id => @course.id, :subject_id => subject['id'])
	end
end

instructors.each do |a|
	Instructor.create!(:last => a['last'], :email => a['email'])
end