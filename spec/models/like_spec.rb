require 'rails_helper'

RSpec.describe Like, type: :model do
  subject { Like.new }

  before { subject.save }

  it 'Likes text should contain text' do
    expect(subject).to_not be_valid
  end
end
