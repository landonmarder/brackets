class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.datetime :expires_at
      t.integer :bracket_id, null: false

      t.timestamps null: false
    end
  end
end
