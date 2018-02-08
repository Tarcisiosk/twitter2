require 'rails_helper'

describe CoursesController do


  context "receiveing course params" do

    it "creates course from hook" do 
      article_params = FactoryGirl.attributes_for(:article)
      expect { post :create, :article => article_params }.to change(Article, :count).by(1) 
    end
  end
end