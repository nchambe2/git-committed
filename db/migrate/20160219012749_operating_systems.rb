class OperatingSystems < ActiveRecord::Migration
  def change
    create_table :operating_systems do |t|
      t.string :name, null: false
    end
  end
end
