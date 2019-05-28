class AddHometownIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hometown_id, :integer
  end
end
