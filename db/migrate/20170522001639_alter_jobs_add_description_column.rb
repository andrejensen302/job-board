class AlterJobsAddDescriptionColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :description, :text
  end
end
