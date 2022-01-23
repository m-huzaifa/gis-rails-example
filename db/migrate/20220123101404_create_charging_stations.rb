class CreateChargingStations < ActiveRecord::Migration[5.2]
  def change
    create_table :charging_stations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.datetime :total_duration
      t.datetime :charging_time
      t.string :port_type
      t.string :energy
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
