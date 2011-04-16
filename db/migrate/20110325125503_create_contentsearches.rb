class CreateContentsearches < ActiveRecord::Migration
  def self.up
    add_column "links", "content", "text", :default => NULL
  end
  def self.down
    remove_column "links", "content"
  end
end
