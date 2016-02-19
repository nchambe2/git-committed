class OSs < ActiveRecord::Migration
  def change
    create_table :oss do |t|
      t.string :name
    end
  end
end
