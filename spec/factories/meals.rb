FactoryBot.define do
  factory :meal do
      descricao { Faker::Name.name }
  end
end