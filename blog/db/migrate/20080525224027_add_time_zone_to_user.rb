class AddTimeZoneToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :time_zone
      t.belongs_to :role
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :time_zone
      t.remove_belongs_to :role
    end    
  end
end
