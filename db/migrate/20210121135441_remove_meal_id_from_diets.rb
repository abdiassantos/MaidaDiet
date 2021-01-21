class RemoveMealIdFromDiets < ActiveRecord::Migration[6.0]
  def change
    remove_column :diets, :meal_id, :string
  end
end
