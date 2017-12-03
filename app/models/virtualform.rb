class Virtualform < ApplicationRecord
  # has_many :questions,
  # belongs_to :v360,
  belongs_to :formable, polymorphic: true
end
