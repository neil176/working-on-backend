class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|

    	t.string :description
    	t.string :image
    	t.boolean :core
    	t.integer :project_id

      t.timestamps
    end
  end
end
