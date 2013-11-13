class RemovePinIdFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :pin_id
  end

  def down
    add_column :comments, :pin_id, :integer
  end
end
