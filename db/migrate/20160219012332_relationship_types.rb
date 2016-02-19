class RelationshipTypes < ActiveRecord::Migration
  def change
    create_table :relationship_types do |t|
      t.string :type, null: false

      t.timestamps(null: false)
    end
  end
end
