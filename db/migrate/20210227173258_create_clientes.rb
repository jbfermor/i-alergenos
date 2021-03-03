class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :cifNif
      t.string :direccion
      t.string :localidad
      t.integer :cp
      t.string :provincia
      t.integer :telefono

      t.timestamps
    end
  end
end
