class Label < ApplicationRecord
  has_many :label_goals
  has_many :goals, through: :label_goals
end
