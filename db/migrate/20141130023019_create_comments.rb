class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :board_id
      t.string :name, :default => "匿名希望"
      t.text :content

      t.timestamps

      t.index :board_id
    end
  end
end
