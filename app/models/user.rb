class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]
  validates :username,  presence: true,
                        length: {minimum: 4, maximum: 25}
  has_many :favorites
  has_many :favorite_recipes, through: :favorites, source: :recipe

  def self.from_omniauth(auth)
    # find user and add provider/uid if it already exists but has not been linked
    if existing_user = find_by(email: auth.info.email)
      existing_user.update_attributes(provider: auth.provider, uid: auth.uid) if existing_user.provider.nil? && existing_user.uid.nil?
    end
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.username = auth.info.first_name
      user.email = auth.info.email
    end
  end
end