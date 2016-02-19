class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :password_digest, null: false
      t.string :username, null: false
      t.string :email, null: false
      t.string :zip_code, null: false
      t.datetime :birthdate, null: false
      t.references :gender_identity
      t.references :sexual_orientation
      t.references :sexual_preference
      t.references :text_editor
      t.references :os
      t.timestamps(null: false)
    end
  end
end

