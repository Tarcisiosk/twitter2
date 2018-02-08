class CoursesController < ApplicationController
  skip_before_action :verify_authenticity_token

  
  def course_created_callback
    puts params
    render :nothing => true
  end

  
end