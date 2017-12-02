class Answer < ApplicationRecord
  belongs_to :question,
  belongs_to :contact,
  belongs_to :client
end
