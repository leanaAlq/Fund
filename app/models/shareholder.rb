class Shareholder < ApplicationRecord
  has_and_belongs_to_many :accounts
  has_many :transactions
end
