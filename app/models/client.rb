class Client < ApplicationRecord
    has_one :profile, as: :profileable
end
