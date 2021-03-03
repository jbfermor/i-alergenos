class Menu < ApplicationRecord
  belongs_to :cliente
  has_many :menu_platos, dependent: :destroy
  has_many :platos, through: :menu_platos
end
