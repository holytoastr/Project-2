class Corgi < ActiveRecord::Base
  belongs_to :emotion
  has_many :comments # NHO: recommend adding `dependent: :destroy` to your has_many relationships
  # to prevent "orphaned" instances
  belongs_to :user
end
