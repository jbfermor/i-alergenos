class AddSuscriptorToCliente < ActiveRecord::Migration[6.1]
  def change
    add_column :clientes, :suscriptor, :integer, default: false
  end
end
