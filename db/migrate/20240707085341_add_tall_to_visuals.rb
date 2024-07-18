class AddTallToVisuals < ActiveRecord::Migration[6.1]
  def change
    add_column :visuals, :tall, :string
    add_column :visuals, :weight, :string
    add_column :visuals, :color, :string
    add_column :visuals, :style, :string
  end
end
