class Virtualform < ApplicationRecord
  has_many :questions,
  belongs_to :formable, polymorphic: true
  # belongs_to :v360
end
