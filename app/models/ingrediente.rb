class Ingrediente < ApplicationRecord
  belongs_to :grupoingrediente
  belongs_to :cliente
  has_many :plato_ingredientes
  has_many :platos, through: :plato_ingredientes
  has_many :ingrediente_alergenos
  has_many :alergenos, through: :ingrediente_alergenos
end
