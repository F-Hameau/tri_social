class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable


  validates :name, presence: { message: 'Ce champ doit être complété' }
  validates :name, uniqueness: { message: 'Ce nom est déjà pris' }
  validates :password, format: { with: /(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}/, message: 'Le mot de passe doit contenir au moins 1 chiffre et 1 lettre et être composé de 8 caractères' }
  validates :email, format: { with: /\A.*@.*\..*\z/, message: "L'email est invalide" }

end
