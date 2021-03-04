class IngredienteAlergeno < ApplicationRecord
  belongs_to :alergeno
  belongs_to :ingrediente
end
