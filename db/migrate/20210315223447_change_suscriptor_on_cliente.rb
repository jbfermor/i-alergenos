class ChangeSuscriptorOnCliente < ActiveRecord::Migration[6.1]
  def change
    change_column :clientes, :suscriptor, 'numeric USING CAST(suscriptor AS numeric)' 
  end
end
