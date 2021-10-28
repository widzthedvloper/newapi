FactoryBot.define do
  factory :ingredient do
    name { SecureRandom.hex(10) }
    calories { 11 }
    food_id { 1 }
    user_id { 1 }
  end
end
