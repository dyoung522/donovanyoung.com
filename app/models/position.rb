class Position < ApplicationRecord
  belongs_to :company
  has_many :skill_sets, dependent: :destroy
  has_many :skills, through: :skill_sets
end
