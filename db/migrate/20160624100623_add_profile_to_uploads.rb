class AddProfileToUploads < ActiveRecord::Migration
  def change
    add_reference :uploads, :profile, index: true, foreign_key: true
  end
end
