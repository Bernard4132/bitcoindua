class User < ApplicationRecord
  has_many :memberships
  has_many :subscriptions, through: :memberships
  has_many :buybitcoins
  has_many :sellbitcoins
  attribute :email, :string
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
