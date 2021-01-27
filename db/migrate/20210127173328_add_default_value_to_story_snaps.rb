class AddDefaultValueToStorySnaps < ActiveRecord::Migration[6.0]
  def change
    change_column :stories, :snaps, :integer, default: 0
  end
end
