class Goal < ApplicationRecord
  has_many :labels, through: :label_goals
  has_many :label_goals
end
