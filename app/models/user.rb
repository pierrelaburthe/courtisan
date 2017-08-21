class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  has_many :challenges

  validates :email, :first_name, :last_name, :gender, :i_am, :i_like, :i_look_for, :status, :age, presence: true

end








