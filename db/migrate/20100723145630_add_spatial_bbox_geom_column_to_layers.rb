class AddSpatialBboxGeomColumnToLayers < ActiveRecord::Migration
 def self.up
    add_column :layers, :bbox_geom, :polygon, :srid => 4326
    add_index :layers, :bbox_geom, :spatial => true
  end

  def self.down
    remove_column :layers, :bbox_geom
    remove_index :layers, :bbox_geom
  end
end
