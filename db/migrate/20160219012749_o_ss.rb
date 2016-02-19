class OSs < ActiveRecord::Migration
  def change
    create_table :oss do |t|
      t.string :name, null: false
    end
  end
end
