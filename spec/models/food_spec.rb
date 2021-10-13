require 'rails_helper'

RSpec.describe Food, type: :model do
    context "Validations" do
    subject { FactoryBot.build(:food) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:user_id) }
  end
end
