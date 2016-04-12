class CreateTreeStuffs < ActiveRecord::Migration
  def change
    create_table :tree_stuffs do |t|
      t.string :tree

      t.timestamps null: false
    end
  end
end
