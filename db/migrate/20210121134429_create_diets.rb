class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :horario
      t.string :descricao

      t.timestamps
    end
  end
end
