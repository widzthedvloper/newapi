FactoryBot.define do
  factory :food do
    name { SecureRandom.hex(10) }
    user_id { 1 }
  end
end
