class CreateCoreStuffs < ActiveRecord::Migration
  def change
    create_table :core_stuffs do |t|
      t.string :core

      t.timestamps null: false
    end
  end
end
