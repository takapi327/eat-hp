class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      
      t.string   :name,    null:false
      t.integer  :price,   null:false
      t.text     :content, null:false

      t.timestamps
    end
  end
end
