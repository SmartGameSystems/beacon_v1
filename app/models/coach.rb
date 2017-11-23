class Coach < ApplicationRecord
    has_many :clients
    has_many :contacts
    has_one :profile, as: :profileable
end
