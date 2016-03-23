class AddUsersToCorgis < ActiveRecord::Migration
  def change
    add_reference :corgis, :user, index: true, foreign_key: true
  end
end
