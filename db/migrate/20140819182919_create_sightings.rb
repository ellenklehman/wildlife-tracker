class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.belongs_to :critter

      t.date :date
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
