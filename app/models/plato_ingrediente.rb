class PlatoIngrediente < ApplicationRecord
  belongs_to :plato
  belongs_to :ingrediente
end
