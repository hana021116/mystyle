class AddPhotoToVisuals < ActiveRecord::Migration[6.1]
  def change
    add_column :visuals, :photo, :string
  end
end
