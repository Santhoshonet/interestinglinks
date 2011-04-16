class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :link
      t.text :description
      t.integer :tag
      t.integer :createdby
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
