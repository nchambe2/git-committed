class GenderIdentities < ActiveRecord::Migration
  def change
    create_table :gender_identities do |t|
      t.string :name, null: false
    end
  end
end
