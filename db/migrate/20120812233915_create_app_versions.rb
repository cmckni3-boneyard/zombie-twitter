class CreateAppVersions < ActiveRecord::Migration
  def change
    create_table :app_versions do |t|
      t.string :version
      t.string :revision

      t.timestamps
    end
  end
end
