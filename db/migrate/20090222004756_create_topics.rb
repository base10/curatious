class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :slug,         :null => false
      t.string :name,         :null => false
      t.text   :description,  :null => false

      t.timestamps
    end

    add_index :topics, :slug
  end

  def self.down
    drop_table :topics
  end
end
