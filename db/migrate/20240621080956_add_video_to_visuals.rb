class AddVideoToVisuals < ActiveRecord::Migration[6.1]
  def change
    add_column :visuals, :video, :string
  end
end
