class Comment < ActiveRecord::Base
  belongs_to :corgi
  belongs_to :user
end
