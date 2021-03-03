class AddClienteRefToMenus < ActiveRecord::Migration[6.1]
  def change
    add_reference :menus, :cliente, null: false, foreign_key: true
  end
end
