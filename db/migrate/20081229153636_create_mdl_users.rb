class CreateMdlUsers < ActiveRecord::Migration
  def self.up
    create_table :mdl_users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :country
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :mdl_users
  end
end
