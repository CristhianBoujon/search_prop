class AddDetailsToProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :bathrooms, :int 			unless column_exists? :properties, :bathrooms
    add_column :properties, :bedrooms, :int 			unless column_exists? :properties, :bedrooms
    add_column :properties, :has_garden, :bool 			unless column_exists? :properties, :has_garden
    add_column :properties, :pets_allowed, :bool 		unless column_exists? :properties, :pets_allowed
    add_column :properties, :has_garage, :bool 			unless column_exists? :properties, :has_garage
    add_column :properties, :children_allowed, :bool 	unless column_exists? :properties, :children_allowed
  end
end
