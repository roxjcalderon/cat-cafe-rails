class CreateCafe < ActiveRecord::Migration[7.1]
  def up
    create_table :menu_items do |t|
      t.string :item_description, :null => false
      t.integer :category, :null => false
      t.string  :size_type
      t.timestamps
    end

    create_table :menu_item_values do |t|
      t.decimal :price, :null => false
      t.integer :size_value
      t.integer :menu_item_id, :null => false
      t.timestamps
    end

    create_table :menu_item_variations do |t|
      t.string :variation, :null => false
      t.decimal :upcharge
      t.integer :menu_item_id, :null => false
      t.timestamps
    end

  end

  def down
   drop_table :menu_items
   drop_table :menu_item_values
   drop_table :menu_item_variations
  end

end
