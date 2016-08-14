class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :set_token

  devise :omniauthable, omniauth_providers: [:github]

  private

  def set_token
    self.token = ULID.generate
  end
end
