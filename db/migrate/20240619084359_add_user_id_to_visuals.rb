class AddUserIdToVisuals < ActiveRecord::Migration[6.1]
  def change
    add_column :visuals, :user_id, :integer
  end
end
