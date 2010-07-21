class CreateTeilnahmen < ActiveRecord::Migration
  def self.up
    create_table :teilnahmen do |t|
      t.references :seminartermin
      t.references :benutzer

      t.timestamps
    end
  end

  def self.down
    drop_table :teilnahmen
  end
end
