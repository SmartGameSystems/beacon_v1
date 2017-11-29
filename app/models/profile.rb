class Profile < ApplicationRecord
  belongs_to :profileable, polymorphic: true
 # Set each type of user to profileable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
