class CreateSubDistricts < ActiveRecord::Migration
  def change
    create_table :sub_districts do |t|
      t.integer :district_id
      t.integer :sub_district_id
      t.string :sub_district_name

      t.timestamps null: false
    end
  end
end
