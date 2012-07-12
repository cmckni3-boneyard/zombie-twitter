class Zombie < ActiveRecord::Base
  attr_accessible :graveyard, :name
  has_many :tweets
  validates :graveyard, :name, :presence => true
end
