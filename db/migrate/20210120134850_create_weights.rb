class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.decimal :peso_atual

      t.timestamps
    end
  end
end
