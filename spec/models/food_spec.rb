require 'rails_helper'

RSpec.describe Food, type: :model do
    context "Validations" do
    subject { FactoryBot.build(:food) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:user_id) }
    it { should_not allow_value("somevalue very very very very very very very veyr vvvvvvvvvvery long value").for(:name) }
    it { should allow_value("somevalue").for(:name) }
  end
end
