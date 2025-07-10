class CreateAllocations < ActiveRecord::Migration[8.0]
  def change
    create_table :allocations do |t|
      t.references :project, null: false, foreign_key: true
      t.references :budget, null: false, foreign_key: true
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
