class Contact < ApplicationRecord
  belongs_to :coach
  has_one :profile, as: :profileable
end
