class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer :state_id
      t.integer :district_id
      t.string :district_name

      t.timestamps null: false
    end
  end
end
