class AddAttachmentToProfile < ActiveRecord::Migration
  def self.up
    add_attachment :profiles, :picture
  end

  def self.down
    remove_attachment :profiles, :picture
  end
end
