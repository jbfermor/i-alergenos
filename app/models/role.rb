class Role < ApplicationRecord
  has_many :clientes, dependent: :restrict_with_exception
end
