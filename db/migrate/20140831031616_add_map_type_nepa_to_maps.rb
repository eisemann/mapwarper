class AddMapTypeNepaToMaps < ActiveRecord::Migration
  def self.up
    add_column :maps, :map_type_nepa, :integer
  end

  def self.down
    remove_column :maps, :map_type_nepa
  end
end
