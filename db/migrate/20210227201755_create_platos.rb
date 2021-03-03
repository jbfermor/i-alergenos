class CreatePlatos < ActiveRecord::Migration[6.1]
  def change
    create_table :platos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
