class Client < ApplicationRecord
    has_one :profile, as: :profileable
    validates :unreads, numericality: { greater_than_or_equal_to: 0 }
end
