class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :users, :through => :enrollments
  has_many :course_subject, dependent:   :destroy
  has_many :subjects, :through => :course_subject
  
  #def self.search(search)
	#	where(["name LIKE ? ","%#{params\[\title\]}%")
  #end
  
end
