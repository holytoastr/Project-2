class Corgi < ActiveRecord::Base
  belongs_to :emotion
  has_many :comments
  belongs_to :user
end
