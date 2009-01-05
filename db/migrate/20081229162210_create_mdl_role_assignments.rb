class CreateMdlRoleAssignments < ActiveRecord::Migration
  def self.up
    create_table :mdl_role_assignments do |t|
      t.integer :roleid
      t.integer :userid

      t.timestamps
    end
  end

  def self.down
    drop_table :mdl_role_assignments
  end
end
