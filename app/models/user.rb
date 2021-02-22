class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # NHO: recommend adding `dependent: :destroy` to your has_many relationships
   # to prevent "orphaned" instances
  has_many :corgis
  has_many :comments
end
