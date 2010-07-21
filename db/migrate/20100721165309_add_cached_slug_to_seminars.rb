class AddCachedSlugToSeminars < ActiveRecord::Migration
  def self.up
    add_column :seminars, :cached_slug, :string
    add_column :seminartermine, :cached_slug, :string

    add_index :seminars, :cached_slug
    add_index :seminartermine, :cached_slug
  end

  def self.down
    remove_column :seminars, :cached_slug
    remove_column :seminartermine, :cached_slug
  end
end
