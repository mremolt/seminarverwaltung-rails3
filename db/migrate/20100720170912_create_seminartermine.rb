class CreateSeminartermine < ActiveRecord::Migration
  def self.up
    create_table :seminartermine do |t|
      t.date :beginn
      t.date :ende
      t.string :raum
      t.references :seminar

      t.timestamps
    end
  end

  def self.down
    drop_table :seminartermine
  end
end
