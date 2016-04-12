class CreateShopStuffs < ActiveRecord::Migration
  def change
    create_table :shop_stuffs do |t|
      t.string :shop

      t.timestamps null: false
    end
  end
end
