class Grupoingrediente < ApplicationRecord
  has_many :ingredientes
  belongs_to :cliente
end
