class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :animal, :string
      t.column :date, :datetime
      t.column :latitude, :integer
      t.column :longitude, :integer
      t.column :species_id, :integer

      t.timestamps
    end
  end
end
