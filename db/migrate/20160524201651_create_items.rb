class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
