class Plato < ApplicationRecord
  has_many :menu_platos, dependent: :destroy
  has_many :menus, through: :lista_platos
end
