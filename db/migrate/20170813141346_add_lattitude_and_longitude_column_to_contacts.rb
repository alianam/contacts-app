class AddLattitudeAndLongitudeColumnToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :lattitude, :float
    add_column :contacts, :longitude, :float
  end
end
