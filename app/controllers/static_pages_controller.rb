class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @enrollments = Enrollment.where("enrollments.user_id LIKE ?", "%#{current_user.id}%")
    end
  end
end
