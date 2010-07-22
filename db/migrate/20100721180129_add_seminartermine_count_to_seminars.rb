class AddSeminartermineCountToSeminars < ActiveRecord::Migration
  def self.up
    add_column :seminars, :seminartermine_count, :integer
  end

  def self.down
    remove_column :seminars, :seminartermine_count
  end
end
