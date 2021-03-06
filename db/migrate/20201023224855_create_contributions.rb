class CreateContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :contributions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tree, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
