#Populating with a User Admin to tests
User.create(email:"admin@admin.com", password:"adminadmin", name:"Admin")

# Populating the database with meals
Meal.create(descricao: "Cafe da Manha")
Meal.create(descricao: "Lanche da Manha");
Meal.create(descricao: "Almoco");
Meal.create(descricao: "Lanche da Tarde");
Meal.create(descricao: "Jantar");

10.times do |i| 
  Weight.create({
    peso_atual: Faker::Number.between(from: 70, to: 150),
    user_id: 1,
    created_at: Faker::Date.between(from: '2020-10-01', to: '2021-01-22'),
    updated_at: Faker::Date.between(from: '2021-01-23', to: '2022-01-22')
  })
end