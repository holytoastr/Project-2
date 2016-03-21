class Corgi < ActiveRecord::Base
  belongs_to :emotion
  has_many :comments
end
