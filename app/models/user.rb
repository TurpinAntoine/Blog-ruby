class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs
  has_many :comments

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {maximum: 255, minimum: 4}




end
