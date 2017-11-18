class Client < ApplicationRecord
    belongs_to :profile, as: :profileable
end
