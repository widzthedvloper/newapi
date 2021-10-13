FactoryBot.define do
  factory :user do
    email { "#{SecureRandom.hex}@#{SecureRandom.hex}.#{SecureRandom.hex}" }
  end
end
