class CreateTreeweathers < ActiveRecord::Migration[6.0]
  def change
    create_table :treeweathers do |t|
      t.references :tree, null: false, foreign_key: true
      t.references :weather, null: false, foreign_key: true

      t.timestamps
    end
  end
end
