#Populating with a User Admin to tests
User.create!(email:"admin@admin.com", password:"adminadmin", name:"Admin")

# Populating the database with meals
Meal.create!(descricao: "Cafe da Manha")
Meal.create!(descricao: "Lanche da Manha");
Meal.create!(descricao: "Almoco");
Meal.create!(descricao: "Lanche da Tarde");
Meal.create!(descricao: "Jantar");

10.times do |i| 
  Weight.create!({
    peso_atual: Faker::Number.between(from: 70, to: 150),
    user_id: 1,
    created_at: Faker::Date.between(from: '2020-10-01', to: '2021-01-22'),
    updated_at: Faker::Date.between(from: '2021-01-23', to: '2022-01-22')
  })
end

# Populating with diets
Diet.create!({
  horario: '07:00',
  descricao: 'Pão com ovo',
  meal_id: 1,
  user_id: 1
})
Diet.create!({
  horario: '10:30',
  descricao: 'Suco com Amendoas',
  meal_id: 2,
  user_id: 1
})
Diet.create!({
  horario: '10:30',
  descricao: 'Iogurte com Castanhas',
  meal_id: 2,
  user_id: 1
})
Diet.create!({
  horario: '13:30',
  descricao: 'Arroz com Frango',
  meal_id: 3,
  user_id: 1
})
Diet.create!({
  horario: '13:30',
  descricao: 'Arroz com aspargos e filé',
  meal_id: 3,
  user_id: 1
})
Diet.create!({
  horario: '13:30',
  descricao: 'Batata Doce com Tilápia',
  meal_id: 3,
  user_id: 1
})
Diet.create!({
  horario: '15:30',
  descricao: 'Suco com castanhas',
  meal_id: 4,
  user_id: 1
})
Diet.create!({
  horario: '15:30',
  descricao: '2x Scoops de Whey Protein com 100ml de Água',
  meal_id: 4,
  user_id: 1
})
Diet.create!({
  horario: '20:30',
  descricao: 'Arroz com Frango',
  meal_id: 5,
  user_id: 1
})
Diet.create!({
  horario: '20:30',
  descricao: 'Batata Doce com Tilápia',
  meal_id: 5,
  user_id: 1
})

#Populating with infos
Info.create!({
  data_inicio: Faker::Date.between(from: '2020-10-01', to: '2021-01-22'),
  data_fim: Faker::Date.between(from: '2021-01-23', to: '2022-01-22'),
  peso: Faker::Number.between(from: 100, to: 150),
  peso_ideal: Faker::Number.between(from: 70, to: 10),
  altura: Faker::Number.between(from: 150, to: 200),
  user_id: 1
})