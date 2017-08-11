class AddIndexes < ActiveRecord::Migration[4.2]
  def change
    add_index(:photos, [:sol, :camera_id, :img_src, :rover_id], unique: true)
    add_index(:photos, :rover_id)
    add_index(:photos, :camera_id)
  end
end
