class CreateCorgis < ActiveRecord::Migration
  def change
    create_table :corgis do |t|
      t.string :img_url
      t.string :quote
      t.integer :emotion_id

      t.timestamps null: false
    end
  end
end
