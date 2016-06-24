class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :place
      t.string :title

      t.string :city
      t.string :state
      t.attachment :image
      t.string :diety
      t.string :religion
      t.string :temple_type
      t.text :about_temple
      t.timestamps null: false
    end
    add_index :profiles, :place_id
  end
end
