class CreatePlatoIngrediente < ActiveRecord::Migration[6.1]
  def change
    create_table :plato_ingredientes do |t|
      t.integer :plato_id
      t.integer :ingrediente_id
    end
  end
end
