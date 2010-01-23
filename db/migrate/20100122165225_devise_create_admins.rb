class DeviseCreateAdmins < ActiveRecord::Migration
  def self.up
    create_table(:admins) do |t|
      t.authenticatable :encryptor => :sha1, :null => false
      t.rememberable
      t.timestamps
    end

    add_index :admins, :email,                :unique => true
  end

  def self.down
    drop_table :admins
  end
end
