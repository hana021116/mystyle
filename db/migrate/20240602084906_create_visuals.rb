class CreateVisuals < ActiveRecord::Migration[6.1]
  def change
    create_table :visuals do |t|
      t.text :body

      t.timestamps
    end
  end
end
