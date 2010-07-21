class CreateBenutzer < ActiveRecord::Migration
  def self.up
    create_table :benutzer do |t|
      t.string :anrede
      t.string :vorname
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :benutzer
  end
end
