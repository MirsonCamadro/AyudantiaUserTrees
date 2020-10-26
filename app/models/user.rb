class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :contributions
  has_many :trees, through: :contributions
  has_many :posts, as: :posteable
  has_many :treeweathers
  has_many :weathers, through: :treeweathers

end
