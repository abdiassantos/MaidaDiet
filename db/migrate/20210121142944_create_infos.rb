class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.date :data_inicio
      t.date :data_fim
      t.decimal :peso
      t.decimal :peso_ideal
      t.decimal :altura

      t.timestamps
    end
  end
end
