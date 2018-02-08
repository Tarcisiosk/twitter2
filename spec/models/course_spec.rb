require 'rails_helper'

RSpec.describe Course, type: :model do

	context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:url) }
	end

  context 'when creating a new course' do 
    let(:course) { FactoryBot.build(:course) }

  	it 'generates a tweet to publish' do
      expect(course).to receive(:publish)
      course.save
  	end
  end

end
