class Movie < ApplicationRecord
  validates :title, :year, :director, :plot, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 1878 }

  has_many :actor_roles
  has_many :actors, :through => :actor_roles
end
