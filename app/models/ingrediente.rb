class Ingrediente < ApplicationRecord
  belongs_to :grupoingrediente
  has_many :plato_ingredientes, dependent: :destroy
  has_many :platos, through: :plato_ingredientes
  has_many :ingrediente_alergenos
  has_many :alergenos, through: :ingrediente_alergenos
end
