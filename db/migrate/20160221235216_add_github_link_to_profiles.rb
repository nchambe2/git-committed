class AddGithubLinkToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :github_link, :string
  end
end
