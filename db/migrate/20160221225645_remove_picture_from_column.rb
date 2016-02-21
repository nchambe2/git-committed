class RemovePictureFromColumn < ActiveRecord::Migration
  def change
    update_column :profiles, :picture
  end
end
