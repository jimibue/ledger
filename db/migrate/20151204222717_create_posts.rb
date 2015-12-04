class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user_id, index: true, foreign_key: true
      t.text :ledge
      t.int :appreciate, default: 0

      t.timestamps null: false
    end
  end
end
