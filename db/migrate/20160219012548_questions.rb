class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
    end
  end
end
