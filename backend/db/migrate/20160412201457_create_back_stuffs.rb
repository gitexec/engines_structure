class CreateBackStuffs < ActiveRecord::Migration
  def change
    create_table :back_stuffs do |t|
      t.string :back

      t.timestamps null: false
    end
  end
end
