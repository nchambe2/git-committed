class TextEditors < ActiveRecord::Migration
  def change
    create_table :text_editors do |t|
      t.string :name, null: false

      t.timestamps(null: false)
    end
  end
end
