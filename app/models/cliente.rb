class Cliente < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many :menus
  has_many :grupoingredientes
  has_many :ingredientes
  has_many :platos

  def admin?
    role.nombre == "admin"
  end

  def usuario?
    role.nombre == "usuario"
  end

end
