class User < ApplicationRecord
  attr_reader :sending_challenges
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]


  has_many :messages


  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :status, presence: true
  validates :i_am, presence: true
  validates :i_like, presence: true
  validates :i_look_for, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :attracted_by, presence: true


  CHOIX = ["courtiser", "se faire courtiser"]

  GENDER = ["Homme", "Femme"]

  def self.find_for_facebook_oauth(auth)
    # Récuperer plus d'infos pour compléter profil user
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end


  def sending_challenges
    Challenge.where(seducer1: self.id)
  end




end









