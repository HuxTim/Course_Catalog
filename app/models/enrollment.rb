class Enrollment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :course, optional: true
  validates :user_id, presence: true
  validates :course_id, presence: true
end
