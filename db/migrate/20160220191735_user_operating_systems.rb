class UserOperatingSystems < ActiveRecord::Migration
  def change
    create_table :user_operating_systems do |t|
      t.references :operating_system
      t.references :user
    end
  end
end
