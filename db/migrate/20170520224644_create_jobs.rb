class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :company
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :salary
      t.timestamps
    end
  end
end
