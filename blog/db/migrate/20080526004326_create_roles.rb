class CreateRoles < ActiveRecord::Migration
  def self.up
    change_table :roles do |t|
      t.belongs_to :company
    end
  end

  def self.down
    change_table :roles do |t|
      t.remove_belongs_to :company
    end    
  end
end
