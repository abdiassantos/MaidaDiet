class AddMealIdToDiets < ActiveRecord::Migration[6.0]
  def change
    add_column :diets, :meal_id, :integer
  end
end
