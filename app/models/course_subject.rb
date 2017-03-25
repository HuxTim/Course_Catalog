class CourseSubject < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :subject, optional: true
end
