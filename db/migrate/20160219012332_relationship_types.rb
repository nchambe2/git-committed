class RelationshipTypes < ActiveRecord::Migration
  def change
    create_table :relationship_types do |t|
      t.string :type, null: false
    end
  end
end
