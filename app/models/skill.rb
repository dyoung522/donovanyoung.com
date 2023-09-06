class Skill < ApplicationRecord
  has_many :skill_sets, dependent: :destroy
  has_many :positions, through: :skill_sets
end
