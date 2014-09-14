class Professional < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :civility, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :specialty, null: false
      t.string :address, null: false
      t.string :zip_code, null: false
      t.string :city, null: false
      t.string :country, null: false, default: 'France'

      t.timestamps
    end
  end
end
