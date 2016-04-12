class CreateFrontStuffs < ActiveRecord::Migration
  def change
    create_table :front_stuffs do |t|
      t.string :front

      t.timestamps null: false
    end
  end
end
