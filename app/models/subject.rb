class Subject < ApplicationRecord
  has_many :relationships, dependent:   :destroy
  has_many :courses, :through => :relationships
  self.primary_key = "indicator"
end
