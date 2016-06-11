class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :title, null: false
      t.integer :contestant_amount, null: false

      t.timestamps null: false
    end
  end
end
