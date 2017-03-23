class CoursesController < ApplicationController
  def search
	@subjects = Subject.all.map{ |sub| [sub.name] }
	@subjects_id = Subject.all.map{ |sub| [sub.id] }
  end
  
  def search_results
	@results = 
  end

  def index
    @courses = Course.all
  end
end
