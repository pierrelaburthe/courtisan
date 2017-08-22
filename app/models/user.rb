class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  has_many :challenges

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :status, presence: true
  validates :i_am, presence: true
  validates :i_like, presence: true
  validates :i_look_for, presence: true
  validates :gender, presence: true
  validates :age, presence: true


  CHOIX = ["courtiser", "se faire courtiser"]

end








