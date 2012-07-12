class Tweet < ActiveRecord::Base
  attr_accessible :status
  belongs_to :zombie
  validates :status, :presence => true
  validates_associated :zombie
end
