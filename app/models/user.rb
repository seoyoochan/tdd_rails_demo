class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

         validates :email, presence: true, format: { with: Devise.email_regexp }
         validates :password, presence: true, length: { within: Devise.password_length }



  has_many :recipes

end
