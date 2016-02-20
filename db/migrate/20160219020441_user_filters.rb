class UserFilters < ActiveRecord::Migration
  def change
    create_table :user_filters do |t|
      t.references :filter
      t.references :user

      t.timestamps(null: false)
    end
  end
end
