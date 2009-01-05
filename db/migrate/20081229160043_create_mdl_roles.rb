class CreateMdlRoles < ActiveRecord::Migration
  def self.up
    create_table :mdl_roles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :mdl_roles
  end
end
