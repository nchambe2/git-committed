class UserTextEditors < ActiveRecord::Migration
  def change
    create_table :user_text_editors do |t|
      t.references :text_editor
      t.references :user
    end
  end
end
