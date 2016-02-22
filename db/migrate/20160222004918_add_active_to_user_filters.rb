class AddActiveToUserFilters < ActiveRecord::Migration
  def change
    add_column :user_filters, :active, :bool, default: true, null: false
  end
end
