class Account < ApplicationRecord
  has_and_belongs_to_many :shareholders
end
