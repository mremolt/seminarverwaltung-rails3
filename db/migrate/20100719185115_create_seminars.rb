class CreateSeminars < ActiveRecord::Migration
  def self.up
    create_table :seminars do |t|
      t.string :titel
      t.text :beschreibung
      t.decimal :preis, :precision => 10, :scale => 2
      t.string :kategorie

      t.timestamps
    end
  end

  def self.down
    drop_table :seminars
  end
end
