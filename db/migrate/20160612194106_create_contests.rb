class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.integer :position
      t.integer :round_id, null: false

      t.timestamps null: false
    end
  end
end
