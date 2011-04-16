class Notificationlink < ActiveRecord::Migration
  def self.up
    create_table :notificationlinks do |t|
      t.column :link, :string
    end
  end
  def self.down
    drop_table "notificationlinks"
  end
end
