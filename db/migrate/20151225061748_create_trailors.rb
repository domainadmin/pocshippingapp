class CreateTrailors < ActiveRecord::Migration
  def change
    create_table :trailors do |t|
      t.string :trailorno
      t.string :truckno
      t.string :containerno
      t.datetime :datetimeval
      t.datetime :exportcoff

      t.timestamps null: false
    end
  end
end
