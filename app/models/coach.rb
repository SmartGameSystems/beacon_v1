class Coach < ApplicationRecord
    has_many :clients
    has_many :contacts
    has_one :profile, as: :profileable
    validates_presence_of :code
end
