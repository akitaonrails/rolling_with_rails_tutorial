class AddRoleTable < ActiveRecord::Migration
  def self.up
    create_table :roles, :force => true do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
