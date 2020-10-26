class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.references :posteable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
