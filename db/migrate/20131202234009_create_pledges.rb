class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :amount
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
