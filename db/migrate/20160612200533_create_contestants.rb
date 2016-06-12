class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
