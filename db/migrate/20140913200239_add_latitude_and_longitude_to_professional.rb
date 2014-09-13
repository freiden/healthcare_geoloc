class AddLatitudeAndLongitudeToProfessional < ActiveRecord::Migration
  def change
    add_column :professionals, :latitude, :float
    add_column :professionals, :longitude, :float
  end
end
