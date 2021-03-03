class AddRoleRefToClientes < ActiveRecord::Migration[6.1]
  def change
    add_reference :clientes, :role, null: false, foreign_key: true
  end
end
