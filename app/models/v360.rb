class V360 < ApplicationRecord
  belongs_to :client, belongs_to :coach, has_one :virtualform, formable: true
  # has_many :invitations
end
