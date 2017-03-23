class StaticPagesController < ApplicationController
  def home
  end
  
  def search
	@subjects = Subject.all.map{ |sub| [sub.name] }
	@subjects_id = Subject.all.map{ |sub| [sub.id] }
  end
  
  def search_results
  
  end
end
	