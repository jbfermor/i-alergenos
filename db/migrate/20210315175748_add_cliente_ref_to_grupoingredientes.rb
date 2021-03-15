class AddClienteRefToGrupoingredientes < ActiveRecord::Migration[6.1]
  def change
    add_reference :grupoingredientes, :cliente, foreign_key: true
  end
end
