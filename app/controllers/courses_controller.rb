class CoursesController < ApplicationController
  def search
	@subjectsList = Subject.all.map{ |sub| [sub.name, sub.id] }
	@courseQuery = params[:query]
	@subjectQuery = params[:subject]
	#@courses = Subject.where("subjects.indicator LIKE ?", "%#{@subjectQuery}%")
	@courses = Course.where("courses.name LIKE ?", "%#{@courseQuery}%")
	#@courses = Course.joins(:course_subjects)#.where("courses.name LIKE ?", "%#{@courseQuery}%").where("subjects.indicator LIKE ?", "%#{@subjectQuery}%")
  end

  def index
    @courses = Course.all.order('name ASC')
  end

  def enroll
    if Enrollment.where(:user_id => current_user.id, :course_id => params[:id]).blank?
      @enrollment = Enrollment.new(user_id: current_user.id, course_id: params[:id])
      @enrollment.save
      flash[:success] = "You have successfully enrolled in #{params[:name]}"
      redirect_to "/"
    else
      flash[:warning] = "You are already enrolled in that class!"
    end
  end

  def unenroll

  end
end
