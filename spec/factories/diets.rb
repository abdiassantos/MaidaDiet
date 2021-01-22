FactoryBot.define do
  factory :diet do
    horario { "10:00" }
    descricao { Faker::Name.name }
    meal_id { Faker::Number.between(from: 1, to: 5) }
    user_id { Faker::Number.between(from: 1, to: 1) }
  end
end