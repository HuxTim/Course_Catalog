class Subject < ApplicationRecord
  has_many :relationships, foreign_key: "subject_indicator",
                           primary_key: "indicator",
                           dependent:   :destroy
  has_many :courses, :through => :relationships
  has_many :courses, :through => :relationships
end
