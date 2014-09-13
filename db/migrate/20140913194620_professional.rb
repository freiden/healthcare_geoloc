class Professional < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name, null: false
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :country, null: false, default: 'France'
    end
  end
end
