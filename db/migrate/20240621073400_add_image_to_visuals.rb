class AddImageToVisuals < ActiveRecord::Migration[6.1]
  def change
    add_column :visuals, :image, :string
  end
end
