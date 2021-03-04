class Plato < ApplicationRecord
  has_many :menu_platos, dependent: :destroy
  has_many :menus, through: :lista_platos
  has_many :plato_ingredientes, dependent: :destroy
  has_many :ingredientes, through: :plato_ingredientes
  has_many :alergenos, through: :ingredientes
end
