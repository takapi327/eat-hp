class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|

      t.string   :tittle,  null:false
      t.text     :content, null:false
      t.boolean  :important

      t.timestamps
    end
  end
end
