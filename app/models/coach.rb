class Coach < ApplicationRecord
    has_many :clients
    has_one :profile, as: :profileable
end
