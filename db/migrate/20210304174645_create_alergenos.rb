class CreateAlergenos < ActiveRecord::Migration[6.1]
  def change
    create_table :alergenos do |t|
      t.string :nombre
      t.string :img
      t.timestamps
    end
  end
end
