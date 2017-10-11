class CreateProjectTags < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tags do |t|
    	t.integer :tag_id
    	t.integer :project_id
      t.timestamps
    end
  end
end
