require 'rails_helper'

RSpec.describe Ingredient, type: :model do
    context "Validations" do
      subject { FactoryBot.build(:ingredient) }
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:calories) }
      it { should validate_presence_of(:user_id) }
      it { should validate_presence_of(:food_id) }
      it { should_not allow_value("somevalue very very very very very very very veyr vvvvvvvvvvery long value").for(:name) }
      it { should allow_value("somevalue").for(:name) }
      it { should allow_value(1).for(:calories) }
      it { should_not allow_value('not a numeric').for(:calories) }    
    end
end
