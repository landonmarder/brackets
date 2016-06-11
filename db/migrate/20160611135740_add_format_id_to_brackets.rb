class AddFormatIdToBrackets < ActiveRecord::Migration
  def up
    add_column :brackets, :format_id, :integer, null: false
  end

  def down
    remove_column :brackets, :format_id
  end
end
