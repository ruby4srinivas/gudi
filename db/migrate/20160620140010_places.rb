class Places < ActiveRecord::Migration
  def change
    create_table :places do |t|
    t.integer :mdds_stc
    t.string :state_name
    t.integer :mdds_dtc
    t.string :district_name
    t.integer :mdds_sub
    t.string :s_district
    t.integer :mdds_plcn
    t.string :area_name

    t.timestamps null: false
      end
  end
end
