class UsersTextEditors < ActiveRecord::Migration
  def change
    create_table :users_text_editors do |t|
      t.references :text_editor
      t.belongs_to :user
    end
  end
end
