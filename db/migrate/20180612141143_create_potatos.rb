class CreatePotatos < ActiveRecord::Migration[5.2]
  def change
    create_table :potatos do |t|
      t.string :name
      t.integer :eyes

      t.timestamps
    end
  end
end
