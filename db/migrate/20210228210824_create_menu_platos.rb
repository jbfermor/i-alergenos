class CreateMenuPlatos < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_platos do |t|
      t.integer :menu_id
      t.integer :plato_id
    end
  end
end
