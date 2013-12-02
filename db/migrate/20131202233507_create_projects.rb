class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :goal
      t.datetime :end_date
      t.integer :category_id
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
