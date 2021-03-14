class AddSuscriptorToCliente < ActiveRecord::Migration[6.1]
  def change
    add_column :clientes, :suscriptor, :boolean, default: false
  end
end
