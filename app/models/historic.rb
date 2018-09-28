class Historic < ApplicationRecord
  belongs_to :users
  belongs_to :exchanges
  belongs_to :currencies
end
