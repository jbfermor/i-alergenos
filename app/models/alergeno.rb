class Alergeno < ApplicationRecord
  
  has_many :ingrediente_alergenos
  has_many :ingredientes, through: :ingrediente_alergenos
  has_many :platos, through: :ingredientes
end
