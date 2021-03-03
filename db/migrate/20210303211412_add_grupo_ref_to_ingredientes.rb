class AddGrupoRefToIngredientes < ActiveRecord::Migration[6.1]
  def change
    add_reference :ingredientes, :grupoingrediente, null: false, foreign_key: true
  end
end
