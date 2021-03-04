class CreateIngredienteAlergenos < ActiveRecord::Migration[6.1]
  def change
    create_table :ingrediente_alergenos do |t|
      t.integer :ingrediente_id
      t.integer :alergeno_id
    end
  end
end
