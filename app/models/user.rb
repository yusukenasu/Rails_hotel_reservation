class User < ApplicationRecord
  has_many :rooms

  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: {minimum: 6}, confirmation: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :image

end
