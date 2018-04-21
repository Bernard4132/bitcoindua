class User < ApplicationRecord
  rolify
  has_many :memberships
  has_many :subscriptions, through: :memberships
  has_many :buybitcoins
  has_many :sellbitcoins
  attribute :email, :string
  has_many :blogs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
