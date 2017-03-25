class Subject < ApplicationRecord
  has_many :course_subject, dependent:   :destroy
  has_many :courses, :through => :course_subject
  self.primary_key = "indicator"
end
