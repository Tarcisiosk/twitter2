Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope '/hooks', :controller => :hooks do
    post :course_created_callback
  end
end

#eadbox.twitter2.com/