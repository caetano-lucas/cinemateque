class Actor < ApplicationRecord
  has_many :actor_roles
  has_many :movies, :through => :actor_roles
end
