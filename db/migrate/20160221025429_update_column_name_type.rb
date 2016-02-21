class UpdateColumnNameType < ActiveRecord::Migration
  def change
    rename_column :relationship_types, :type, :name
  end
end
