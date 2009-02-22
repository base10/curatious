class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string     :slug,         :null => false
      t.string     :title,        :null => false
      t.text       :description,  :null => false
      t.string     :url,          :null => false
      t.references :topic,        :null => false

      t.timestamps
    end

    add_index :links, :slug
    add_index :links, [:slug, :topic_id], :unique => true
    add_index :links, [:url, :topic_id], :unique => true
  end

  def self.down
    drop_table :links
  end
end
