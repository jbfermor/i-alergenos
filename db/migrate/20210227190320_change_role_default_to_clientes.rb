class ChangeRoleDefaultToClientes < ActiveRecord::Migration[6.1]
  def change
    change_column_default :clientes, :role_id, from: nil, to: 2
  end
end
