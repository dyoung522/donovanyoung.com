class Company < ApplicationRecord
  has_many :positions, dependent: :destroy
end
