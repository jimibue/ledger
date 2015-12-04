class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :post_id, index: true, foreign_key: true
      t.belongs_to :user_id, index: true, foreign_key: true
      t.text :reply

      t.timestamps null: false
    end
  end
end
