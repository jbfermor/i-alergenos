class ChangeSuscriptorOnCliente < ActiveRecord::Migration[6.1]
  def change
    change_column :clientes, :suscriptor, 'integer USING CAST(suscriptor AS integer)' 
  end
end
