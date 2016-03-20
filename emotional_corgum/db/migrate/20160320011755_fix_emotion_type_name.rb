class FixEmotionTypeName < ActiveRecord::Migration
  def change
    rename_column :emotions, :type, :emotion_name
  end
end
