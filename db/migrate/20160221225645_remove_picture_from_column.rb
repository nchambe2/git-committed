class RemovePictureFromColumn < ActiveRecord::Migration
  def change
    remove_column :profiles, :picture
  end
end
