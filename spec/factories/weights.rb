FactoryBot.define do
  factory :weight do
      peso_atual { Faker::Number.between(from: 70, to: 150) }
      user_id { Faker::Number.between(from: 1, to: 1) }
  end
end