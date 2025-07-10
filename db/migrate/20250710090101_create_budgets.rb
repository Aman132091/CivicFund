class CreateBudgets < ActiveRecord::Migration[8.0]
  def change
    create_table :budgets do |t|
      t.references :project, null: false, foreign_key: true
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
