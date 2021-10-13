require 'rails_helper'

RSpec.describe Ingredient, type: :model do
    context "Validations" do
      subject { FactoryBot.build(:ingredient) }
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:calories) }
      it { should validate_presence_of(:user_id) }
      it { should validate_presence_of(:food_id) }
    end
end
