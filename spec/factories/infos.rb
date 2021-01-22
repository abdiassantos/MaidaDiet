FactoryBot.define do
  factory :info do
    data_inicio { Faker::Date.between(from: '2020-10-01', to: '2021-01-22') }
    data_fim { Faker::Date.between(from: '2021-01-23', to: '2022-01-22') }
    peso { Faker::Number.between(from: 100, to: 150) }
    peso_ideal { Faker::Number.between(from: 70, to: 10) }
    altura { Faker::Number.between(from: 150, to: 200) }
    user_id { Faker::Number.between(from: 1, to: 1) }
  end
end