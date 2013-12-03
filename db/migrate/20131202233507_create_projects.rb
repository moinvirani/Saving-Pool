class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :goal
      t.datetime :start_date
      t.datetime :end_date
      t.integer :category_id
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
