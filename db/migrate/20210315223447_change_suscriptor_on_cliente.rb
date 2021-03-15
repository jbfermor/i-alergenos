class ChangeSuscriptorOnCliente < ActiveRecord::Migration[6.1]
  def change
    change_column :clientes, :suscriptor, using: "suscriptor::integer" 
  end
end
