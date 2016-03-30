class Emotion < ActiveRecord::Base
  has_many :corgis # NHO: recommend adding `dependent: :destroy` to your has_many relationships
  # to prevent "orphaned" instances
end
