class Profile < ApplicationRecord
  belongs_to :profilable, polymorphic: true
  # Set each type of user to profilable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
