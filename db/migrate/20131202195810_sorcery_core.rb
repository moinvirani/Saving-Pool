class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name      
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :city
      t.string :street_address
      t.string :province
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end